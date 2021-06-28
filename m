Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B2D3B5F82
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jun 2021 15:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25F2C403A2;
	Mon, 28 Jun 2021 13:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mbm6kX_ngf7g; Mon, 28 Jun 2021 13:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4180402B8;
	Mon, 28 Jun 2021 13:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B6961BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 11:46:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48020400AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 11:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTVPVPzEZPtG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jun 2021 11:46:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from out30-43.freemail.mail.aliyun.com
 (out30-43.freemail.mail.aliyun.com [115.124.30.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F397D40003
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jun 2021 11:46:51 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=alimailimapcm10staff010182156082;
 MF=xuanzhuo@linux.alibaba.com; NM=1; PH=DS; RN=24; SR=0;
 TI=SMTPD_---0UdwTCe8_1624880807; 
Received: from localhost(mailfrom:xuanzhuo@linux.alibaba.com
 fp:SMTPD_---0UdwTCe8_1624880807) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 28 Jun 2021 19:46:47 +0800
From: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Mon, 28 Jun 2021 19:46:47 +0800
Message-Id: <20210628114647.75449-1-xuanzhuo@linux.alibaba.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Jun 2021 13:59:45 +0000
Subject: [Intel-wired-lan] [PATCH net v3] xdp,
 net: fix for construct skb by xdp inside xsk zc rx
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
Cc: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Ong Boon Leong <boon.leong.ong@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Daniel Borkmann <daniel@iogearbox.net>, Jose Abreu <joabreu@synopsys.com>,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Magnus Karlsson <magnus.karlsson@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When each driver supports xsk rx, if the received buff returns XDP_PASS
after run xdp prog, it must construct skb based on xdp. This patch
extracts this logic into a public function xdp_construct_skb().

There is a bug in the original logic. When constructing skb, we should
copy the meta information to skb and then use __skb_pull() to correct
the data.

Fixes: 0a714186d3c0f ("i40e: add AF_XDP zero-copy Rx support")
Fixes: 2d4238f556972 ("ice: Add support for AF_XDP")
Fixes: bba2556efad66 ("net: stmmac: Enable RX via AF_XDP zero-copy")
Fixes: d0bcacd0a1309 ("ixgbe: add AF_XDP zero-copy Rx support")
Signed-off-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
---

v3: move xdp_construct_skb to xdp_sock_drv.h

 drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 16 +---------
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 12 +-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 12 +-------
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 23 +-------------
 include/net/xdp_sock_drv.h                    | 30 +++++++++++++++++++
 5 files changed, 34 insertions(+), 59 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 68f177a86403..81b0f44eedda 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -246,23 +246,9 @@ bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 count)
 static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
 					     struct xdp_buff *xdp)
 {
-	unsigned int metasize = xdp->data - xdp->data_meta;
-	unsigned int datasize = xdp->data_end - xdp->data;
 	struct sk_buff *skb;

-	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
-			       xdp->data_end - xdp->data_hard_start,
-			       GFP_ATOMIC | __GFP_NOWARN);
-	if (unlikely(!skb))
-		goto out;
-
-	skb_reserve(skb, xdp->data - xdp->data_hard_start);
-	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
-	if (metasize)
-		skb_metadata_set(skb, metasize);
-
-out:
+	skb = xdp_construct_skb(xdp, &rx_ring->q_vector->napi);
 	xsk_buff_free(xdp);
 	return skb;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a1f89ea3c2bd..f95e1adcebda 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -430,22 +430,12 @@ static void ice_bump_ntc(struct ice_ring *rx_ring)
 static struct sk_buff *
 ice_construct_skb_zc(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf)
 {
-	unsigned int metasize = rx_buf->xdp->data - rx_buf->xdp->data_meta;
-	unsigned int datasize = rx_buf->xdp->data_end - rx_buf->xdp->data;
-	unsigned int datasize_hard = rx_buf->xdp->data_end -
-				     rx_buf->xdp->data_hard_start;
 	struct sk_buff *skb;

-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi, datasize_hard,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = xdp_construct_skb(rx_buf->xdp, &rx_ring->q_vector->napi);
 	if (unlikely(!skb))
 		return NULL;

-	skb_reserve(skb, rx_buf->xdp->data - rx_buf->xdp->data_hard_start);
-	memcpy(__skb_put(skb, datasize), rx_buf->xdp->data, datasize);
-	if (metasize)
-		skb_metadata_set(skb, metasize);
-
 	xsk_buff_free(rx_buf->xdp);
 	rx_buf->xdp = NULL;
 	return skb;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index f72d2978263b..123945832c96 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -203,22 +203,12 @@ bool ixgbe_alloc_rx_buffers_zc(struct ixgbe_ring *rx_ring, u16 count)
 static struct sk_buff *ixgbe_construct_skb_zc(struct ixgbe_ring *rx_ring,
 					      struct ixgbe_rx_buffer *bi)
 {
-	unsigned int metasize = bi->xdp->data - bi->xdp->data_meta;
-	unsigned int datasize = bi->xdp->data_end - bi->xdp->data;
 	struct sk_buff *skb;

-	/* allocate a skb to store the frags */
-	skb = __napi_alloc_skb(&rx_ring->q_vector->napi,
-			       bi->xdp->data_end - bi->xdp->data_hard_start,
-			       GFP_ATOMIC | __GFP_NOWARN);
+	skb = xdp_construct_skb(bi->xdp, &rx_ring->q_vector->napi);
 	if (unlikely(!skb))
 		return NULL;

-	skb_reserve(skb, bi->xdp->data - bi->xdp->data_hard_start);
-	memcpy(__skb_put(skb, datasize), bi->xdp->data, datasize);
-	if (metasize)
-		skb_metadata_set(skb, metasize);
-
 	xsk_buff_free(bi->xdp);
 	bi->xdp = NULL;
 	return skb;
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index c87202cbd3d6..143ac1edb876 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4729,27 +4729,6 @@ static void stmmac_finalize_xdp_rx(struct stmmac_priv *priv,
 		xdp_do_flush();
 }

-static struct sk_buff *stmmac_construct_skb_zc(struct stmmac_channel *ch,
-					       struct xdp_buff *xdp)
-{
-	unsigned int metasize = xdp->data - xdp->data_meta;
-	unsigned int datasize = xdp->data_end - xdp->data;
-	struct sk_buff *skb;
-
-	skb = __napi_alloc_skb(&ch->rxtx_napi,
-			       xdp->data_end - xdp->data_hard_start,
-			       GFP_ATOMIC | __GFP_NOWARN);
-	if (unlikely(!skb))
-		return NULL;
-
-	skb_reserve(skb, xdp->data - xdp->data_hard_start);
-	memcpy(__skb_put(skb, datasize), xdp->data, datasize);
-	if (metasize)
-		skb_metadata_set(skb, metasize);
-
-	return skb;
-}
-
 static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32 queue,
 				   struct dma_desc *p, struct dma_desc *np,
 				   struct xdp_buff *xdp)
@@ -4761,7 +4740,7 @@ static void stmmac_dispatch_skb_zc(struct stmmac_priv *priv, u32 queue,
 	struct sk_buff *skb;
 	u32 hash;

-	skb = stmmac_construct_skb_zc(ch, xdp);
+	skb = xdp_construct_skb(xdp, &ch->rxtx_napi);
 	if (!skb) {
 		priv->dev->stats.rx_dropped++;
 		return;
diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
index 4e295541e396..988665cc2981 100644
--- a/include/net/xdp_sock_drv.h
+++ b/include/net/xdp_sock_drv.h
@@ -244,4 +244,34 @@ static inline void xsk_buff_raw_dma_sync_for_device(struct xsk_buff_pool *pool,

 #endif /* CONFIG_XDP_SOCKETS */

+static __always_inline struct sk_buff *xdp_construct_skb(struct xdp_buff *xdp,
+							  struct napi_struct *napi)
+{
+	unsigned int metasize;
+	unsigned int datasize;
+	unsigned int headroom;
+	struct sk_buff *skb;
+	unsigned int len;
+
+	/* this include metasize */
+	datasize = xdp->data_end  - xdp->data_meta;
+	metasize = xdp->data      - xdp->data_meta;
+	headroom = xdp->data_meta - xdp->data_hard_start;
+	len      = xdp->data_end  - xdp->data_hard_start;
+
+	/* allocate a skb to store the frags */
+	skb = __napi_alloc_skb(napi, len, GFP_ATOMIC | __GFP_NOWARN);
+	if (unlikely(!skb))
+		return NULL;
+
+	skb_reserve(skb, headroom);
+	memcpy(__skb_put(skb, datasize), xdp->data_meta, datasize);
+	if (metasize) {
+		__skb_pull(skb, metasize);
+		skb_metadata_set(skb, metasize);
+	}
+
+	return skb;
+}
+
 #endif /* _LINUX_XDP_SOCK_DRV_H */
--
2.31.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
