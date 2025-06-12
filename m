Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F18FAD794A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69243408A9;
	Thu, 12 Jun 2025 17:49:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YTu-5D7OIbDm; Thu, 12 Jun 2025 17:49:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5A60408B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750541;
	bh=HfNon+oEEdrFDuM5Ejv8OUOxCIdMqEwt7J0TJ34AHGA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GHmNvEykKHnQ9J6KP2eHpujTiLSOVGcDrs5qrMxSTzqHFNPJ9y/1duuRZSLUwblM3
	 JS07X9+xcUmB7NHYVoETzctCGyqbCyct13wwY9z61R0p3xArRM149lgW2uovZ/0I1B
	 O8uRwY/f2WOoyLYsdr7dPQzBGQJ0TC+tLZpML/LPdjK6TqHo83+a58cmpXEU0HrqS4
	 dglq9orANVb4axxSpWlY0DZUZM7LinH45If5OSU9xvlXh2xpsoqA+CgY2Ta66Ie6SB
	 kVPihTYqZzd1Y0Q5KxjZaeCeqgKb2VDH8LKQxTtaz34Krf0ca60Ekie+VWR+K30xwJ
	 zTpxk/9dbt+tw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5A60408B4;
	Thu, 12 Jun 2025 17:49:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 15B621E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 079D981E0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TezXkBNBJMNG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:09:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 616E481BBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 616E481BBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 616E481BBD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:39 +0000 (UTC)
X-CSE-ConnectionGUID: fqrxsnxBSo2oyxTvQVVDJg==
X-CSE-MsgGUID: Wc0gWplHR0y7polfzF+Cog==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55738861"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55738861"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:09:39 -0700
X-CSE-ConnectionGUID: UCXwr6pLR36J3S2hwxKKIQ==
X-CSE-MsgGUID: 4B6LOa0JSlKVNLtMNubofQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468564"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:09:35 -0700
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
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 12 Jun 2025 18:02:20 +0200
Message-ID: <20250612160234.68682-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744580; x=1781280580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hE24lPXX0nLCS23tDnnAm3/lb8HkNfW+nj9tLhcpDQ8=;
 b=YJLl5GUIKRluZsUCOZxG8snoFaR1FICEY1x4uBN8jEjeH8uV9e8neOsz
 xE4IdUojTouo14awxUAusYL82sIydDu1OwhIlrt/9tF12+KNbv1SgoLOu
 ycJSBgF9Nl7BGb+00UnN/BcxhZkaru4yUyBG37qk8y/s+rgjFzUUN9y9z
 MMp4o0TRk0YE2DXnx5nJIN2Ba7kuguWA49zX5ioMnxs9nApYQA7+C3CPi
 1w5ronskYxjr8OVfrmGxjJagmx5CRhW3hjM+OuPXkQE7JLleGKCm99NCC
 83zQzyo6cE6IlAs3QJJz8D8fKii0OHNe7x6OLkFhotkWwJvxnNhVD7Wt1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YJLl5GUI
Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/17] libeth: support native
 XDP and register memory model
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

Expand libeth's Page Pool functionality by adding native XDP support.
This means picking the appropriate headroom and DMA direction.
Also, register all the created &page_pools as XDP memory models.
A driver then can call xdp_rxq_info_attach_page_pool() when registering
its RxQ info.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/rx.h                |  6 +++++-
 drivers/net/ethernet/intel/libeth/rx.c | 20 +++++++++++++++-----
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
index 7d5dc58984b1..5d991404845e 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -13,8 +13,10 @@
 
 /* Space reserved in front of each frame */
 #define LIBETH_SKB_HEADROOM	(NET_SKB_PAD + NET_IP_ALIGN)
+#define LIBETH_XDP_HEADROOM	(ALIGN(XDP_PACKET_HEADROOM, NET_SKB_PAD) + \
+				 NET_IP_ALIGN)
 /* Maximum headroom for worst-case calculations */
-#define LIBETH_MAX_HEADROOM	LIBETH_SKB_HEADROOM
+#define LIBETH_MAX_HEADROOM	LIBETH_XDP_HEADROOM
 /* Link layer / L2 overhead: Ethernet, 2 VLAN tags (C + S), FCS */
 #define LIBETH_RX_LL_LEN	(ETH_HLEN + 2 * VLAN_HLEN + ETH_FCS_LEN)
 /* Maximum supported L2-L4 header length */
@@ -66,6 +68,7 @@ enum libeth_fqe_type {
  * @count: number of descriptors/buffers the queue has
  * @type: type of the buffers this queue has
  * @hsplit: flag whether header split is enabled
+ * @xdp: flag indicating whether XDP is enabled
  * @buf_len: HW-writeable length per each buffer
  * @nid: ID of the closest NUMA node with memory
  */
@@ -81,6 +84,7 @@ struct libeth_fq {
 	/* Cold fields */
 	enum libeth_fqe_type	type:2;
 	bool			hsplit:1;
+	bool			xdp:1;
 
 	u32			buf_len;
 	int			nid;
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index 2afa6e33f160..62521a1f4ec9 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -72,7 +72,7 @@ static u32 libeth_rx_hw_len_truesize(const struct page_pool_params *pp,
 static bool libeth_rx_page_pool_params(struct libeth_fq *fq,
 				       struct page_pool_params *pp)
 {
-	pp->offset = LIBETH_SKB_HEADROOM;
+	pp->offset = fq->xdp ? LIBETH_XDP_HEADROOM : LIBETH_SKB_HEADROOM;
 	/* HW-writeable / syncable length per one page */
 	pp->max_len = LIBETH_RX_PAGE_LEN(pp->offset);
 
@@ -159,11 +159,12 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
 		.dev		= napi->dev->dev.parent,
 		.netdev		= napi->dev,
 		.napi		= napi,
-		.dma_dir	= DMA_FROM_DEVICE,
 	};
 	struct libeth_fqe *fqes;
 	struct page_pool *pool;
-	bool ret;
+	int ret;
+
+	pp.dma_dir = fq->xdp ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
 
 	if (!fq->hsplit)
 		ret = libeth_rx_page_pool_params(fq, &pp);
@@ -177,18 +178,26 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
 		return PTR_ERR(pool);
 
 	fqes = kvcalloc_node(fq->count, sizeof(*fqes), GFP_KERNEL, fq->nid);
-	if (!fqes)
+	if (!fqes) {
+		ret = -ENOMEM;
 		goto err_buf;
+	}
+
+	ret = xdp_reg_page_pool(pool);
+	if (ret)
+		goto err_mem;
 
 	fq->fqes = fqes;
 	fq->pp = pool;
 
 	return 0;
 
+err_mem:
+	kvfree(fqes);
 err_buf:
 	page_pool_destroy(pool);
 
-	return -ENOMEM;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(libeth_rx_fq_create);
 
@@ -198,6 +207,7 @@ EXPORT_SYMBOL_GPL(libeth_rx_fq_create);
  */
 void libeth_rx_fq_destroy(struct libeth_fq *fq)
 {
+	xdp_unreg_page_pool(fq->pp);
 	kvfree(fq->fqes);
 	page_pool_destroy(fq->pp);
 }
-- 
2.49.0

