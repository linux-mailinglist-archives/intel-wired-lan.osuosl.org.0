Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B58AD7958
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86B4861407;
	Thu, 12 Jun 2025 17:49:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyBA29RMpWqb; Thu, 12 Jun 2025 17:49:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66DAC61410
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750550;
	bh=ztowZjbygS/U6LoTHLM9WPQ3ECJHFYZWZ2wZR/N4wEQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=woT3AZ8Ioy982XOfbBSH6rPKG9ip3N/DYHj2KeM21GJoh/uS/x5Uyye1VdsY8xwvK
	 rsTZej/VIpSGtOQz0aZI2RblQPZiXVJHswUQDAnPdT+9OdhLQzzDTXxhPytvHPQ9u9
	 n5JR6P/vDllOn7STCFBJAKGEHqeU9iYudYcC88PLV6lcFmYizyiyp3+a+YxsARrEhK
	 19ALhZWsv1u4wVl8ObaauXpUQ4e3Fhr3AK0LmenSm553uo/f4veRUbZbbXfE4BbIy2
	 X57uugR6DPBJYpz6ZTulUwD1Fa4fMKZhpI3TKBJVN5RsflTJLT0ip5WBxHyvkCb7eW
	 YBH4zp7lKYzew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66DAC61410;
	Thu, 12 Jun 2025 17:49:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 766551BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6886783434
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z-28lxWl8CPY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:10:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B484883410
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B484883410
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B484883410
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:10:47 +0000 (UTC)
X-CSE-ConnectionGUID: YKrtmXyFSLKNnovlrzIywA==
X-CSE-MsgGUID: AxsL02k6QGqELaTVeLWRWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55739201"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55739201"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:10:48 -0700
X-CSE-ConnectionGUID: 6p3/DrJsTg6ZPyqWIzD1aw==
X-CSE-MsgGUID: Uk5iDxCfSqaD0NS/1emfpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468690"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:10:43 -0700
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
Date: Thu, 12 Jun 2025 18:02:34 +0200
Message-ID: <20250612160234.68682-18-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744648; x=1781280648;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X29ySbF7NIGDlQVp1woOlVIfnUo3FpZJcl8ba1PlchM=;
 b=HCF+7YLO5YHN4Mt8/qS9QehXe1gCyUZlj77SyO+NF9Velst+o53JQEuP
 g81BEN1PGQMXJd2r5gu62w1HUdIxEs33zPORwXSYVVrCgRbd+CMWnOHzS
 KY4Gm9eWRBh90OhWlfTRShLsm/hK0v/38ShMF2n+zGepatZkcB3G5CeQJ
 etUp95qsWaBfhb//j07Bg8dK5P/wad+WEO2uYr80jYEcR3AKmN98CI4Vo
 J74J8ECS21n57i02RgjH5wANYmiwQJ3DjsJdV19kcaFPliy64wmB6/Vl6
 I1jUXFD+YjzGM2U5IbdyMiijj3A8MzCZiG9GJlmd6VGOyZBhDJ4rFa+Xl
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HCF+7YLO
Subject: [Intel-wired-lan] [PATCH iwl-next v2 17/17] libeth: xdp,
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
index dba09a9168f1..6ce6aec6884c 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -475,6 +475,21 @@ struct libeth_xdp_tx_desc {
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
@@ -870,8 +885,7 @@ static inline u32 libeth_xdp_xmit_queue_head(struct libeth_xdp_tx_bulk *bq,
 
 	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
 		.xdpf	= xdpf,
-		.len	= xdpf->len,
-		.flags	= LIBETH_XDP_TX_FIRST,
+		__libeth_xdp_tx_len(xdpf->len, LIBETH_XDP_TX_FIRST),
 	};
 
 	if (!xdp_frame_has_frags(xdpf))
@@ -902,7 +916,7 @@ static inline bool libeth_xdp_xmit_queue_frag(struct libeth_xdp_tx_bulk *bq,
 
 	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
 		.dma	= dma,
-		.len	= skb_frag_size(frag),
+		__libeth_xdp_tx_len(skb_frag_size(frag)),
 	};
 
 	return true;
@@ -1260,6 +1274,7 @@ bool libeth_xdp_buff_add_frag(struct libeth_xdp_buff *xdp,
  * Internal, use libeth_xdp_process_buff() instead. Initializes XDP buffer
  * head with the Rx buffer data: data pointer, length, headroom, and
  * truesize/tailroom. Zeroes the flags.
+ * Uses faster single u64 write instead of per-field access.
  */
 static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 					   const struct libeth_fqe *fqe,
@@ -1267,7 +1282,15 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
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

