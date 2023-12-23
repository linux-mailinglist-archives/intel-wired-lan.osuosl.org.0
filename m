Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A93A881D16E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34AC842DB3;
	Sat, 23 Dec 2023 02:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34AC842DB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300375;
	bh=L/J6qUis9ZqRO6hgY7xQW2xcNQWCgcxSjNXJJWt+vEA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G5q2kg/T7Y29PriklBSSM/tFG0HHcVucyuTVeC2ts+julxZnVN0EAcdaQWFAcUPn8
	 wyIUGbMPkfTuX/GGXHXaTwHI1KGwkUWSx9aJ4IjYRovJ3wCtQVTAYktX3lM/met8mo
	 TQC/HRNHMWUuVMjPnppEG7Mq/KbjpRyhLt2ralafO7KOWjbd15gmHNaJYs+IAizs1B
	 i0eJFj5QeQwPxiO0m4Cu483wOQ1iLregQttLy0ihG5F3EnJm5QyyLzXWfG5ojVpD15
	 /16FnS8PYuvMSt6oHhd7tRgn4eIB5oyBc5Gy6rym2xzH9DNiiZ5oKwaPX9tSntzMoQ
	 TEY50scGb7e4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yyT887ZTRhwg; Sat, 23 Dec 2023 02:59:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE95D40348;
	Sat, 23 Dec 2023 02:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE95D40348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E3781BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0783760AFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0783760AFB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5u-HrpnlSCc9 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44C7960A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44C7960A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610938"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610938"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537535"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:05 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:37 +0100
Message-ID: <20231223025554.2316836-18-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300349; x=1734836349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VNPt1nK0AOP2pNwVFe078A89NwhgBYFYVPqNFR4BfTE=;
 b=OS8gWTJoJJ0wBk47XVF5PlPL0QGjq/8FzWdu2YwytECsswF3/zbQ2rlU
 mciXwrChmCprP/re8dk51H6a6di8GEBbBC4uf+Wai4K0Fm2Y3t0/0I//a
 sJ4pgO1QRiio0z/b3uAuynWU4zzjk3WbB5w3bkE8hPiB5bZuyBloMvWdV
 cDH1bqFBIbt2gmPlPAbgbx8RoC4HulcR6XaUXnrnawyexHNSCjX2049eF
 Ua02gX7ROOL5ZpAabD0sKsf2I7eMwXYv+DVDwNW15XVAOcBLulfmf9NH1
 zsCCFXX25ryp2h+XNaBxVM2SvDe/qH2lE0Q9aJiQBSIpTqQS5XmfeoaP2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OS8gWTJo
Subject: [Intel-wired-lan] [PATCH RFC net-next 17/34] libie: support native
 XDP and register memory model
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

Expand libie's Page Pool functionality by adding native XDP support.
This means picking the appropriate headroom and DMA direction.
Also, register all the created &page_pools as XDP memory models.
A driver then can call xdp_rxq_info_attach_page_pool() when registering
its RxQ info.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libie/rx.c | 32 ++++++++++++++++++++++-----
 include/linux/net/intel/libie/rx.h    |  6 ++++-
 2 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index 3d3b19d2b40d..b4c404958f25 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -52,7 +52,7 @@ static u32 libie_rx_hw_len_truesize(const struct page_pool_params *pp,
 static void libie_rx_page_pool_params(struct libie_buf_queue *bq,
 				      struct page_pool_params *pp)
 {
-	pp->offset = LIBIE_SKB_HEADROOM;
+	pp->offset = bq->xdp ? LIBIE_XDP_HEADROOM : LIBIE_SKB_HEADROOM;
 	/* HW-writeable / syncable length per one page */
 	pp->max_len = LIBIE_RX_BUF_LEN(pp->offset);
 
@@ -132,17 +132,34 @@ int libie_rx_page_pool_create(struct libie_buf_queue *bq,
 		.dev		= napi->dev->dev.parent,
 		.netdev		= napi->dev,
 		.napi		= napi,
-		.dma_dir	= DMA_FROM_DEVICE,
 	};
+	struct xdp_mem_info mem;
+	struct page_pool *pool;
+	int ret;
+
+	pp.dma_dir = bq->xdp ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
 
 	if (!bq->hsplit)
 		libie_rx_page_pool_params(bq, &pp);
 	else if (!libie_rx_page_pool_params_zc(bq, &pp))
 		return -EINVAL;
 
-	bq->pp = page_pool_create(&pp);
+	pool = page_pool_create(&pp);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	ret = xdp_reg_mem_model(&mem, MEM_TYPE_PAGE_POOL, pool);
+	if (ret)
+		goto err_mem;
+
+	bq->pp = pool;
+
+	return 0;
 
-	return PTR_ERR_OR_ZERO(bq->pp);
+err_mem:
+	page_pool_destroy(pool);
+
+	return ret;
 }
 EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
 
@@ -152,7 +169,12 @@ EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_create, LIBIE);
  */
 void libie_rx_page_pool_destroy(struct libie_buf_queue *bq)
 {
-	page_pool_destroy(bq->pp);
+	struct xdp_mem_info mem = {
+		.type	= MEM_TYPE_PAGE_POOL,
+		.id	= bq->pp->xdp_mem_id,
+	};
+
+	xdp_unreg_mem_model(&mem);
 	bq->pp = NULL;
 }
 EXPORT_SYMBOL_NS_GPL(libie_rx_page_pool_destroy, LIBIE);
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index 87ad8f9e89c7..8eda4ac8028c 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -15,8 +15,10 @@
 
 /* Space reserved in front of each frame */
 #define LIBIE_SKB_HEADROOM	(NET_SKB_PAD + NET_IP_ALIGN)
+#define LIBIE_XDP_HEADROOM	(ALIGN(XDP_PACKET_HEADROOM, NET_SKB_PAD) + \
+				 NET_IP_ALIGN)
 /* Maximum headroom to calculate max MTU below */
-#define LIBIE_MAX_HEADROOM	LIBIE_SKB_HEADROOM
+#define LIBIE_MAX_HEADROOM	LIBIE_XDP_HEADROOM
 /* Link layer / L2 overhead: Ethernet, 2 VLAN tags (C + S), FCS */
 #define LIBIE_RX_LL_LEN		(ETH_HLEN + 2 * VLAN_HLEN + ETH_FCS_LEN)
 /* Maximum supported L2-L4 header length */
@@ -87,6 +89,7 @@ enum libie_rx_buf_type {
  * @rx_buf_len: HW-writeable length per each buffer
  * @type: type of the buffers this queue has
  * @hsplit: flag whether header split is enabled
+ * @xdp: flag indicating whether XDP is enabled
  */
 struct libie_buf_queue {
 	struct page_pool	*pp;
@@ -100,6 +103,7 @@ struct libie_buf_queue {
 	enum libie_rx_buf_type	type:2;
 
 	bool			hsplit:1;
+	bool			xdp:1;
 };
 
 int libie_rx_page_pool_create(struct libie_buf_queue *bq,
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
