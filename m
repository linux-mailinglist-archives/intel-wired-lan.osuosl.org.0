Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5410281D16A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4B4142D38;
	Sat, 23 Dec 2023 02:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B4142D38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300357;
	bh=i2bWeQDUbH4nYaLgTloInWuuaQ2vzazyjXQw5oOGpN0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sF0U/U2Z2U2MFfP95BX1WG9xenEIx9B6e+jjjRaxje+XCugGyQaA8xASHy3x5NOAO
	 1VHGKs3qkACO12AiDtAiu6VuOQEqolvXxZRAQihzyfQiv9GAIf4JKBGCaCArHWP53c
	 xBiWLD5bhCv+xC5PX9GeQWre0dnclR50qWndjinNY1TTVpgkfXFMxVPoZC/Iqr08FG
	 HSJV496jVJtyY2wBHSlAXUY8zRpxC/1vp54UuVUB3M0xsOCLAb4E4AYKCYRH4WTN4/
	 AxJPJTOejp+4wbJGsySwr8eGDC+GyYIp+GJctZKvBsDNW93iNJm2itoySnwKytKq3A
	 Qr00RSZKE+b9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RvrGHbW9aYQA; Sat, 23 Dec 2023 02:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B61242D48;
	Sat, 23 Dec 2023 02:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B61242D48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1CA1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0531060A9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0531060A9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgbfWUP9IiNG for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 320EB60A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 320EB60A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610875"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610875"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537497"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:50 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:33 +0100
Message-ID: <20231223025554.2316836-14-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300335; x=1734836335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w7O2LkdFgRPFTPe5I5rq1IJGyzwbW3hKjP3uSaNFJgU=;
 b=aomeJIhDMWUS19petCbIpHh2n5/LzFo5q7N6LgbxFWfx77iGJZNdLHSE
 6nKxXK8uf1R9iz2OAsCRcRhQn0JYdJaB21WirdocXB2Ec3KkCi7sc74SG
 HrPPUFqMjTt7hRQBmoffxWdRr1uRloHM87BsknrM0QOfMyqYoHUTvV7VH
 Yr/3aMnsgLQ2FFsMQk6KdexehADQ4ydMqqgcDIR3ECMy0xr7Z200R03lj
 YZTzya8BGUzLOlSX/4a7DsU6UpULHjNMjoj+Z8qR3BF3R3z9CKfra0/d7
 Sg52WDcwC7xJ2YKKXMLnKV/wvAjQ1s0YlkFuTS9y1mzqJKmWy++4fyIsR
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aomeJIhD
Subject: [Intel-wired-lan] [PATCH RFC net-next 13/34] xdp: add generic
 xdp_build_skb_from_buff()
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

The code which builds an skb from an &xdp_buff keeps multiplying itself
around the drivers with almost no changes. Let's try to stop that by
adding a generic function.
There's __xdp_build_skb_from_frame() already, so just convert it to take
&xdp_buff instead, while making the original one a wrapper. The original
one always took an already allocated skb, allow both variants here -- if
no skb passed, which is expected when calling from a driver, pick one via
napi_build_skb().

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/xdp.h |  4 +++
 net/core/xdp.c    | 89 +++++++++++++++++++++++++++++++----------------
 2 files changed, 63 insertions(+), 30 deletions(-)

diff --git a/include/net/xdp.h b/include/net/xdp.h
index a3dc0f39b437..4fcf0ac48345 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -276,6 +276,10 @@ xdp_update_skb_shared_info(struct sk_buff *skb, u8 nr_frags,
 void xdp_warn(const char *msg, const char *func, const int line);
 #define XDP_WARN(msg) xdp_warn(msg, __func__, __LINE__)
 
+struct sk_buff *__xdp_build_skb_from_buff(struct sk_buff *skb,
+					  const struct xdp_buff *xdp);
+#define xdp_build_skb_from_buff(xdp) __xdp_build_skb_from_buff(NULL, xdp)
+
 struct xdp_frame *xdp_convert_zc_to_xdp_frame(struct xdp_buff *xdp);
 struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
 					   struct sk_buff *skb,
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 03ebdb21ea62..ed73b97472b4 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -609,45 +609,77 @@ int xdp_alloc_skb_bulk(void **skbs, int n_skb, gfp_t gfp)
 }
 EXPORT_SYMBOL_GPL(xdp_alloc_skb_bulk);
 
-struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
-					   struct sk_buff *skb,
-					   struct net_device *dev)
+struct sk_buff *__xdp_build_skb_from_buff(struct sk_buff *skb,
+					  const struct xdp_buff *xdp)
 {
-	struct skb_shared_info *sinfo = xdp_get_shared_info_from_frame(xdpf);
-	unsigned int headroom, frame_size;
-	void *hard_start;
-	u8 nr_frags;
+	const struct xdp_rxq_info *rxq = xdp->rxq;
+	const struct skb_shared_info *sinfo;
+	u32 nr_frags = 0;
 
 	/* xdp frags frame */
-	if (unlikely(xdp_frame_has_frags(xdpf)))
+	if (unlikely(xdp_buff_has_frags(xdp))) {
+		sinfo = xdp_get_shared_info_from_buff(xdp);
 		nr_frags = sinfo->nr_frags;
+	}
 
-	/* Part of headroom was reserved to xdpf */
-	headroom = sizeof(*xdpf) + xdpf->headroom;
+	net_prefetch(xdp->data_meta);
 
-	/* Memory size backing xdp_frame data already have reserved
-	 * room for build_skb to place skb_shared_info in tailroom.
-	 */
-	frame_size = xdpf->frame_sz;
+	if (!skb) {
+		skb = napi_build_skb(xdp->data_hard_start, xdp->frame_sz);
+		if (unlikely(!skb))
+			return NULL;
+	} else {
+		/* build_skb_around() can return NULL only when !skb, which
+		 * is impossible here.
+		 */
+		build_skb_around(skb, xdp->data_hard_start, xdp->frame_sz);
+	}
 
-	hard_start = xdpf->data - headroom;
-	skb = build_skb_around(skb, hard_start, frame_size);
-	if (unlikely(!skb))
-		return NULL;
+	skb_reserve(skb, xdp->data - xdp->data_hard_start);
+	__skb_put(skb, xdp->data_end - xdp->data);
+	if (xdp->data > xdp->data_meta)
+		skb_metadata_set(skb, xdp->data - xdp->data_meta);
+
+	if (rxq->mem.type == MEM_TYPE_PAGE_POOL)
+		skb_mark_for_recycle(skb);
 
-	skb_reserve(skb, headroom);
-	__skb_put(skb, xdpf->len);
-	if (xdpf->metasize)
-		skb_metadata_set(skb, xdpf->metasize);
+	/* __xdp_rxq_info_reg() sets these two together */
+	if (rxq->reg_state == REG_STATE_REGISTERED)
+		skb_record_rx_queue(skb, rxq->queue_index);
+
+	if (unlikely(nr_frags)) {
+		u32 truesize = sinfo->xdp_frags_truesize ? :
+			       nr_frags * xdp->frame_sz;
 
-	if (unlikely(xdp_frame_has_frags(xdpf)))
 		xdp_update_skb_shared_info(skb, nr_frags,
-					   sinfo->xdp_frags_size,
-					   nr_frags * xdpf->frame_sz,
-					   xdp_frame_is_frag_pfmemalloc(xdpf));
+					   sinfo->xdp_frags_size, truesize,
+					   xdp_buff_is_frag_pfmemalloc(xdp));
+	}
 
 	/* Essential SKB info: protocol and skb->dev */
-	skb->protocol = eth_type_trans(skb, dev);
+	skb->protocol = eth_type_trans(skb, rxq->dev);
+
+	return skb;
+}
+EXPORT_SYMBOL_GPL(__xdp_build_skb_from_buff);
+
+struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
+					   struct sk_buff *skb,
+					   struct net_device *dev)
+{
+	struct xdp_rxq_info rxq = {
+		.dev		= dev,
+		.mem		= xdpf->mem,
+	};
+	struct xdp_buff xdp;
+
+	/* Check early instead of delegating it to build_skb_around() */
+	if (unlikely(!skb))
+		return NULL;
+
+	xdp.rxq = &rxq;
+	xdp_convert_frame_to_buff(xdpf, &xdp);
+	__xdp_build_skb_from_buff(skb, &xdp);
 
 	/* Optional SKB info, currently missing:
 	 * - HW checksum info		(skb->ip_summed)
@@ -655,9 +687,6 @@ struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
 	 * - RX ring dev queue index	(skb_record_rx_queue)
 	 */
 
-	if (xdpf->mem.type == MEM_TYPE_PAGE_POOL)
-		skb_mark_for_recycle(skb);
-
 	/* Allow SKB to reuse area used by xdp_frame */
 	xdp_scrub_frame(xdpf);
 
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
