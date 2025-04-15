Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF6EA8A57D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F2AE80C0D;
	Tue, 15 Apr 2025 17:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jMW8LX3EtmZf; Tue, 15 Apr 2025 17:30:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4526C8087C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738203;
	bh=aUVs61MaQJIS6nNX62C978g9dtS8pLNVJcAGReXPTR4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IUfs2IrpiFUOBMkWjCWQ9PbMkU8WElbTj6eGrLL4IO8aIWoOmujUYFCFJd3WnyS1h
	 fDsWZblH8OSAZ3GO2vbJI4UezT6J892UMKDVzOkCK8NKikdB02u4GU8KeVk3gimbqv
	 0fr5I/RMVHle/ikZCh+kQRuUQNbEhMfumDH6v0KUKboYButVDxGnPXvYQb4A7/KO2t
	 +VqQ1Zf1ohePKs6652tgu206SZYeCwM5dUFgSWkYiFngEmKKTXMkq74ap9mRZ+QMV3
	 35GELpVHYluXY2iNx2p8Gf43VjafYcwg1JukspGYYSNYSDxw79F9rGqE67Pj+2I21z
	 NXdpx56H23Q7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4526C8087C;
	Tue, 15 Apr 2025 17:30:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D236B109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7FC44172D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:30:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQy9NmvFpgvR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:30:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0D7C240F97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D7C240F97
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D7C240F97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:30:00 +0000 (UTC)
X-CSE-ConnectionGUID: MAeW4eg3QVy7mMllsY5XwQ==
X-CSE-MsgGUID: AnWVpjx5SAqmIU3BzYKVGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275832"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275832"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:30:01 -0700
X-CSE-ConnectionGUID: eGFNhxI4SMagQ5uVy8xXWQ==
X-CSE-MsgGUID: K+Iyi2CpRyayfvmeNdNDmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729927"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:29:58 -0700
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
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 15 Apr 2025 19:28:25 +0200
Message-ID: <20250415172825.3731091-17-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738201; x=1776274201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T7zvRwYUz24J7zyCwHHnzE4WhBWvlthCh4Hi7fmj6Mo=;
 b=afLdpFAwNBgGrX6u3CuCBbegQ5tkk+32620Cz1sttnASlDxn8mQBvngk
 e7M858HdWdZ8SW8qFDkCEdJsB/9ei7WCZPiBVyQ+MZQlyvKgon3gpV6se
 cjiJy+uiqS1JV88/cQ5KE9S4T5xW5erpb/7ZgPq/RrB2ePkNGIZDCH6Qv
 Mt/vG7FLZSZzPkghzcG/SyzZKS6X/TBYWQGjzVE3iVaT3QJhlC/7ZZd/H
 fWCacraky3SdvX+yvvPK2iOl6d6Kxa+VadOpVT/AD9r/wsSj0AhWqx+Al
 hnRjOC2Fsqc3cyhNK+/DktSVIpJ91GkxDO0yttoLyYetCReSKfnThnJnD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=afLdpFAw
Subject: [Intel-wired-lan] [PATCH iwl-next 16/16] libeth: xdp,
 xsk: access adjacent u32s as u64 where applicable
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

On 64-bit systems, writing/reading one u64 is faster than two u32s even
when they're are adjacent in a struct. The compilers won't guarantee
they will combine those; I observed both successful and unsuccessful
attempts with both GCC and Clang, and it's not easy to say what it
depends on.
There's a few places in libeth_xdp winning up to several percent from
combined access (both performance and object code size, especially
when unrolling). Add __LIBETH_WORD_ACCESS and use it there on LE.
Drivers are free to optimize HW-specific callbacks under the same
definition.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/xdp.h | 29 ++++++++++++++++++++++++++---
 include/net/libeth/xsk.h | 10 +++++-----
 2 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 85f058482fc7..6d15386aff31 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -464,6 +464,21 @@ struct libeth_xdp_tx_desc {
 	((const void *)(uintptr_t)(priv));				      \
 })
 
+/*
+ * On 64-bit systems, assigning one u64 is faster than two u32s. When ::len
+ * occupies lowest 32 bits (LE), whole ::opts can be assigned directly instead.
+ */
+#ifdef __LITTLE_ENDIAN
+#define __LIBETH_WORD_ACCESS		1
+#endif
+#ifdef __LIBETH_WORD_ACCESS
+#define __libeth_xdp_tx_len(flen, ...)					      \
+	.opts = ((flen) | FIELD_PREP(GENMASK_ULL(63, 32), (__VA_ARGS__ + 0)))
+#else
+#define __libeth_xdp_tx_len(flen, ...)					      \
+	.len = (flen), .flags = (__VA_ARGS__ + 0)
+#endif
+
 /**
  * libeth_xdp_tx_xmit_bulk - main XDP Tx function
  * @bulk: array of frames to send
@@ -863,8 +878,7 @@ static inline u32 libeth_xdp_xmit_queue_head(struct libeth_xdp_tx_bulk *bq,
 
 	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
 		.xdpf	= xdpf,
-		.len	= xdpf->len,
-		.flags	= LIBETH_XDP_TX_FIRST,
+		__libeth_xdp_tx_len(xdpf->len, LIBETH_XDP_TX_FIRST),
 	};
 
 	if (!xdp_frame_has_frags(xdpf))
@@ -895,7 +909,7 @@ static inline bool libeth_xdp_xmit_queue_frag(struct libeth_xdp_tx_bulk *bq,
 
 	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
 		.dma	= dma,
-		.len	= skb_frag_size(frag),
+		__libeth_xdp_tx_len(skb_frag_size(frag)),
 	};
 
 	return true;
@@ -1253,6 +1267,7 @@ bool libeth_xdp_buff_add_frag(struct libeth_xdp_buff *xdp,
  * Internal, use libeth_xdp_process_buff() instead. Initializes XDP buffer
  * head with the Rx buffer data: data pointer, length, headroom, and
  * truesize/tailroom. Zeroes the flags.
+ * Uses faster single u64 write instead of per-field access.
  */
 static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 					   const struct libeth_fqe *fqe,
@@ -1260,7 +1275,15 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 {
 	const struct page *page = __netmem_to_page(fqe->netmem);
 
+#ifdef __LIBETH_WORD_ACCESS
+	static_assert(offsetofend(typeof(xdp->base), flags) -
+		      offsetof(typeof(xdp->base), frame_sz) ==
+		      sizeof(u64));
+
+	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
+#else
 	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
+#endif
 	xdp_prepare_buff(&xdp->base, page_address(page) + fqe->offset,
 			 page->pp->p.offset, len, true);
 }
diff --git a/include/net/libeth/xsk.h b/include/net/libeth/xsk.h
index 213778a68476..481a7b28e6f2 100644
--- a/include/net/libeth/xsk.h
+++ b/include/net/libeth/xsk.h
@@ -26,8 +26,8 @@ static inline bool libeth_xsk_tx_queue_head(struct libeth_xdp_tx_bulk *bq,
 {
 	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
 		.xsk	= xdp,
-		.len	= xdp->base.data_end - xdp->data,
-		.flags	= LIBETH_XDP_TX_FIRST,
+		__libeth_xdp_tx_len(xdp->base.data_end - xdp->data,
+				    LIBETH_XDP_TX_FIRST),
 	};
 
 	if (likely(!xdp_buff_has_frags(&xdp->base)))
@@ -48,7 +48,7 @@ static inline void libeth_xsk_tx_queue_frag(struct libeth_xdp_tx_bulk *bq,
 {
 	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
 		.xsk	= frag,
-		.len	= frag->base.data_end - frag->data,
+		__libeth_xdp_tx_len(frag->base.data_end - frag->data),
 	};
 }
 
@@ -199,7 +199,7 @@ __libeth_xsk_xmit_fill_buf_md(const struct xdp_desc *xdesc,
 	ctx = xsk_buff_raw_get_ctx(sq->pool, xdesc->addr);
 	desc = (typeof(desc)){
 		.addr	= ctx.dma,
-		.len	= xdesc->len,
+		__libeth_xdp_tx_len(xdesc->len),
 	};
 
 	BUILD_BUG_ON(!__builtin_constant_p(tmo == libeth_xsktmo));
@@ -226,7 +226,7 @@ __libeth_xsk_xmit_fill_buf(const struct xdp_desc *xdesc,
 {
 	return (struct libeth_xdp_tx_desc){
 		.addr	= xsk_buff_raw_get_dma(sq->pool, xdesc->addr),
-		.len	= xdesc->len,
+		__libeth_xdp_tx_len(xdesc->len),
 	};
 }
 
-- 
2.49.0

