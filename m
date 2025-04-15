Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D904BA8A571
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:29:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D50D61173;
	Tue, 15 Apr 2025 17:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MNUal6YDKqdX; Tue, 15 Apr 2025 17:29:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99D8761099
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738175;
	bh=NH025oeYcM/mfaqwnZrA4xOnC10l+DF/HtlMFyaGy54=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LsI0UX0H6KjWZGtuUb0hirtvx9QqoB6prEOVcb2qricYGw9BZbBBgZ9kQkbcEAVGT
	 Og6xY+5p0ivRjtq9K7iYpUPYsWobwL63Cvm0hIF9pQVWBmcjbGvWdV4KTg3YJQiIfK
	 jpVCTm/e+SAlXcKhs8D1Mlt5Kui2V+95MAv2zSSdoC8oUAnVIaYC2cF29179eyk2AA
	 Y/UUeBfLveWQDD1LAC85G9IM2zYjJrZFzTuQsOapmT72q0neiLGSiG6H5QvYR00np7
	 VASknBD30jTPOjIxkuZwwxeMoTurNMEWwD5uWvpY7AonNeLUZabEW1c9v5n70gelTx
	 /hp6pfswc5mpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 99D8761099;
	Tue, 15 Apr 2025 17:29:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 243FA109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15DC6400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQOxOctFNqlX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:29:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 17E50404D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17E50404D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17E50404D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:30 +0000 (UTC)
X-CSE-ConnectionGUID: zUtZcnoXT16LxNps20r+wg==
X-CSE-MsgGUID: oF/xlmcVQAiOxdFv0EcYNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275729"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275729"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:29:27 -0700
X-CSE-ConnectionGUID: Q5yDxASCQlyldvAVCZwBxg==
X-CSE-MsgGUID: gljhbGdbSeGJrefdyNpTWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729732"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:29:23 -0700
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
Date: Tue, 15 Apr 2025 19:28:17 +0200
Message-ID: <20250415172825.3731091-9-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738170; x=1776274170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y9dVgg5kD0QtEYGYSr3pkltx/82Vqvg5iLnymUVyNlk=;
 b=LadYh2IAA3abiQ4bb6oWpHOhhRG6rbjkF5xWtGC/TD5iDMwpKL1xydxp
 pZFfn0BQWEvtm7Qw2XY3yZwnP2kGTK3mkWRyBOgAtnbl8CAopEdBK4tX1
 HUYx2TYw25OdQswfFaaLRHn6c38S6YYB7dgkqQW917p+982Xwk36szKPD
 dJGCbBoci91PF++1Z7dh//WkTx6GvXAGTAoTB5wKZ5u9Ii1nXyDQkFHjv
 yLOGJth/9b5UwpC5SQZeGa2rS2YETTYTklVmnXDlZN3psLh2yhETvfHHM
 ZFcW1V78uGOIIk7LuWibcPGazw2pQEDOOXXtKAWK1OFppgK+T1iC+lMI+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LadYh2IA
Subject: [Intel-wired-lan] [PATCH iwl-next 08/16] libeth: xdp: add helpers
 for preparing/processing &libeth_xdp_buff
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

Add convenience helpers to build an &xdp_buff. This means: general
initialization before the NAPI loop, adding head, adding frags etc.
libeth_xdp_process_buff() is the same what everybody have in their
drivers:

dma_sync_for_cpu();

if (!frag) {
	add_head();
	prefetch();
} else {
	add_frag();
}

Note that I don't use net_prefetch(), sticking to the original
prefetch(). In none of my tests prefetching 128 bytes yielded better
perf than 64 bytes. That might differ if the headers are huge enough,
but then additional tunneling etc. overhead takes place, you either
way won't win a lot.

&libeth_xdp_stash is for cases when you exit the polling loop without
finishing building the buff. If that happens, you need to store the
buffer in the queue structure until the next loop and then restore it.
It makes no sense to place a whole full &xdp_buff there. Define a
minimal structure, which would store only the fields essential to
restore it.
I was able to pack it into 16 bytes, which is only 8 bytes bigger
than `struct sk_buff *skb` on x64.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/types.h              |  23 ++++
 include/net/libeth/xdp.h                | 151 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/xdp.c |  90 ++++++++++++++
 3 files changed, 264 insertions(+)

diff --git a/include/net/libeth/types.h b/include/net/libeth/types.h
index 4df703a9eb59..7b27c1966d45 100644
--- a/include/net/libeth/types.h
+++ b/include/net/libeth/types.h
@@ -79,4 +79,27 @@ struct libeth_xdpsq_timer {
 	struct delayed_work		dwork;
 };
 
+/* Rx polling path */
+
+/**
+ * struct libeth_xdp_buff_stash - struct for stashing &xdp_buff onto a queue
+ * @data: pointer to the start of the frame, xdp_buff.data
+ * @headroom: frame headroom, xdp_buff.data - xdp_buff.data_hard_start
+ * @len: frame linear space length, xdp_buff.data_end - xdp_buff.data
+ * @frame_sz: truesize occupied by the frame, xdp_buff.frame_sz
+ * @flags: xdp_buff.flags
+ *
+ * &xdp_buff is 56 bytes long on x64, &libeth_xdp_buff is 64 bytes. This
+ * structure carries only necessary fields to save/restore a partially built
+ * frame on the queue structure to finish it during the next NAPI poll.
+ */
+struct libeth_xdp_buff_stash {
+	void				*data;
+	u16				headroom;
+	u16				len;
+
+	u32				frame_sz:24;
+	u32				flags:8;
+} __aligned_largest;
+
 #endif /* __LIBETH_TYPES_H */
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 54cf1e7cc1fc..8149eba93af7 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -60,6 +60,42 @@ static_assert(offsetof(struct libeth_xdp_buff, desc) ==
 static_assert(IS_ALIGNED(sizeof(struct xdp_buff_xsk),
 			 __alignof(struct libeth_xdp_buff)));
 
+/**
+ * __LIBETH_XDP_ONSTACK_BUFF - declare a &libeth_xdp_buff on the stack
+ * @name: name of the variable to declare
+ * @...: sizeof() of the driver-private data
+ */
+#define __LIBETH_XDP_ONSTACK_BUFF(name, ...)				      \
+	___LIBETH_XDP_ONSTACK_BUFF(name, ##__VA_ARGS__)
+/**
+ * LIBETH_XDP_ONSTACK_BUFF - declare a &libeth_xdp_buff on the stack
+ * @name: name of the variable to declare
+ * @...: type or variable name of the driver-private data
+ */
+#define LIBETH_XDP_ONSTACK_BUFF(name, ...)				      \
+	__LIBETH_XDP_ONSTACK_BUFF(name, __libeth_xdp_priv_sz(__VA_ARGS__))
+
+#define ___LIBETH_XDP_ONSTACK_BUFF(name, ...)				      \
+	_DEFINE_FLEX(struct libeth_xdp_buff, name, priv,		      \
+		     LIBETH_XDP_PRIV_SZ(__VA_ARGS__ + 0),		      \
+		     /* no init */);					      \
+	LIBETH_XDP_ASSERT_PRIV_SZ(__VA_ARGS__ + 0)
+
+#define __libeth_xdp_priv_sz(...)					      \
+	CONCATENATE(__libeth_xdp_psz, COUNT_ARGS(__VA_ARGS__))(__VA_ARGS__)
+
+#define __libeth_xdp_psz0(...)
+#define __libeth_xdp_psz1(...)		sizeof(__VA_ARGS__)
+
+#define LIBETH_XDP_PRIV_SZ(sz)						      \
+	(ALIGN(sz, __alignof(struct libeth_xdp_buff)) / sizeof(long))
+
+/* Performs XSK_CHECK_PRIV_TYPE() */
+#define LIBETH_XDP_ASSERT_PRIV_SZ(sz)					      \
+	static_assert(offsetofend(struct xdp_buff_xsk, cb) >=		      \
+		      struct_size_t(struct libeth_xdp_buff, priv,	      \
+				    LIBETH_XDP_PRIV_SZ(sz)))
+
 /* XDPSQ sharing */
 
 DECLARE_STATIC_KEY_FALSE(libeth_xdpsq_share);
@@ -956,6 +992,65 @@ __libeth_xdp_xmit_do_bulk(struct libeth_xdp_tx_bulk *bq,
 
 /* Rx polling path */
 
+void libeth_xdp_load_stash(struct libeth_xdp_buff *dst,
+			   const struct libeth_xdp_buff_stash *src);
+void libeth_xdp_save_stash(struct libeth_xdp_buff_stash *dst,
+			   const struct libeth_xdp_buff *src);
+void __libeth_xdp_return_stash(struct libeth_xdp_buff_stash *stash);
+
+/**
+ * libeth_xdp_init_buff - initialize a &libeth_xdp_buff for Rx NAPI poll
+ * @dst: onstack buffer to initialize
+ * @src: XDP buffer stash placed on the queue
+ * @rxq: registered &xdp_rxq_info corresponding to this queue
+ *
+ * Should be called before the main NAPI polling loop. Loads the content of
+ * the previously saved stash or initializes the buffer from scratch.
+ */
+static inline void
+libeth_xdp_init_buff(struct libeth_xdp_buff *dst,
+		     const struct libeth_xdp_buff_stash *src,
+		     struct xdp_rxq_info *rxq)
+{
+	if (likely(!src->data))
+		dst->data = NULL;
+	else
+		libeth_xdp_load_stash(dst, src);
+
+	dst->base.rxq = rxq;
+}
+
+/**
+ * libeth_xdp_save_buff - save a partially built buffer on a queue
+ * @dst: XDP buffer stash placed on the queue
+ * @src: onstack buffer to save
+ *
+ * Should be called after the main NAPI polling loop. If the loop exited before
+ * the buffer was finished, saves its content on the queue, so that it can be
+ * completed during the next poll. Otherwise, clears the stash.
+ */
+static inline void libeth_xdp_save_buff(struct libeth_xdp_buff_stash *dst,
+					const struct libeth_xdp_buff *src)
+{
+	if (likely(!src->data))
+		dst->data = NULL;
+	else
+		libeth_xdp_save_stash(dst, src);
+}
+
+/**
+ * libeth_xdp_return_stash - free an XDP buffer stash from a queue
+ * @stash: stash to free
+ *
+ * If the queue is about to be destroyed, but it still has an incompleted
+ * buffer stash, this helper should be called to free it.
+ */
+static inline void libeth_xdp_return_stash(struct libeth_xdp_buff_stash *stash)
+{
+	if (stash->data)
+		__libeth_xdp_return_stash(stash);
+}
+
 static inline void libeth_xdp_return_va(const void *data, bool napi)
 {
 	netmem_ref netmem = virt_to_netmem(data);
@@ -997,6 +1092,62 @@ static inline void __libeth_xdp_return_buff(struct libeth_xdp_buff *xdp,
 	xdp->data = NULL;
 }
 
+bool libeth_xdp_buff_add_frag(struct libeth_xdp_buff *xdp,
+			      const struct libeth_fqe *fqe,
+			      u32 len);
+
+/**
+ * libeth_xdp_prepare_buff - fill &libeth_xdp_buff with head FQE data
+ * @xdp: XDP buffer to attach the head to
+ * @fqe: FQE containing the head buffer
+ * @len: buffer len passed from HW
+ *
+ * Internal, use libeth_xdp_process_buff() instead. Initializes XDP buffer
+ * head with the Rx buffer data: data pointer, length, headroom, and
+ * truesize/tailroom. Zeroes the flags.
+ */
+static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
+					   const struct libeth_fqe *fqe,
+					   u32 len)
+{
+	const struct page *page = __netmem_to_page(fqe->netmem);
+
+	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
+	xdp_prepare_buff(&xdp->base, page_address(page) + fqe->offset,
+			 page->pp->p.offset, len, true);
+}
+
+/**
+ * libeth_xdp_process_buff - attach Rx buffer to &libeth_xdp_buff
+ * @xdp: XDP buffer to attach the Rx buffer to
+ * @fqe: Rx buffer to process
+ * @len: received data length from the descriptor
+ *
+ * If the XDP buffer is empty, attaches the Rx buffer as head and initializes
+ * the required fields. Otherwise, attaches the buffer as a frag.
+ * Already performs DMA sync-for-CPU and frame start prefetch
+ * (for head buffers only).
+ *
+ * Return: true on success, false if the descriptor must be skipped (empty or
+ * no space for a new frag).
+ */
+static inline bool libeth_xdp_process_buff(struct libeth_xdp_buff *xdp,
+					   const struct libeth_fqe *fqe,
+					   u32 len)
+{
+	if (!libeth_rx_sync_for_cpu(fqe, len))
+		return false;
+
+	if (xdp->data)
+		return libeth_xdp_buff_add_frag(xdp, fqe, len);
+
+	libeth_xdp_prepare_buff(xdp, fqe, len);
+
+	prefetch(xdp->data);
+
+	return true;
+}
+
 /* Tx buffer completion */
 
 void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
index 25be680de627..ca87789178ed 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -172,6 +172,64 @@ EXPORT_SYMBOL_GPL(libeth_xdp_xmit_return_bulk);
 
 /* Rx polling path */
 
+/**
+ * libeth_xdp_load_stash - recreate an &xdp_buff from libeth_xdp buffer stash
+ * @dst: target &libeth_xdp_buff to initialize
+ * @src: source stash
+ *
+ * External helper used by libeth_xdp_init_buff(), do not call directly.
+ * Recreate an onstack &libeth_xdp_buff using the stash saved earlier.
+ * The only field untouched (rxq) is initialized later in the
+ * abovementioned function.
+ */
+void libeth_xdp_load_stash(struct libeth_xdp_buff *dst,
+			   const struct libeth_xdp_buff_stash *src)
+{
+	dst->data = src->data;
+	dst->base.data_end = src->data + src->len;
+	dst->base.data_meta = src->data;
+	dst->base.data_hard_start = src->data - src->headroom;
+
+	dst->base.frame_sz = src->frame_sz;
+	dst->base.flags = src->flags;
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_load_stash);
+
+/**
+ * libeth_xdp_save_stash - convert &xdp_buff to a libeth_xdp buffer stash
+ * @dst: target &libeth_xdp_buff_stash to initialize
+ * @src: source XDP buffer
+ *
+ * External helper used by libeth_xdp_save_buff(), do not call directly.
+ * Use the fields from the passed XDP buffer to initialize the stash on the
+ * queue, so that a partially received frame can be finished later during
+ * the next NAPI poll.
+ */
+void libeth_xdp_save_stash(struct libeth_xdp_buff_stash *dst,
+			   const struct libeth_xdp_buff *src)
+{
+	dst->data = src->data;
+	dst->headroom = src->data - src->base.data_hard_start;
+	dst->len = src->base.data_end - src->data;
+
+	dst->frame_sz = src->base.frame_sz;
+	dst->flags = src->base.flags;
+
+	WARN_ON_ONCE(dst->flags != src->base.flags);
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_save_stash);
+
+void __libeth_xdp_return_stash(struct libeth_xdp_buff_stash *stash)
+{
+	LIBETH_XDP_ONSTACK_BUFF(xdp);
+
+	libeth_xdp_load_stash(xdp, stash);
+	libeth_xdp_return_buff_slow(xdp);
+
+	stash->data = NULL;
+}
+EXPORT_SYMBOL_GPL(__libeth_xdp_return_stash);
+
 /**
  * libeth_xdp_return_buff_slow - free &libeth_xdp_buff
  * @xdp: buffer to free/return
@@ -185,6 +243,38 @@ void __cold libeth_xdp_return_buff_slow(struct libeth_xdp_buff *xdp)
 }
 EXPORT_SYMBOL_GPL(libeth_xdp_return_buff_slow);
 
+/**
+ * libeth_xdp_buff_add_frag - add frag to XDP buffer
+ * @xdp: head XDP buffer
+ * @fqe: Rx buffer containing the frag
+ * @len: frag length reported by HW
+ *
+ * External helper used by libeth_xdp_process_buff(), do not call directly.
+ * Frees both head and frag buffers on error.
+ *
+ * Return: true success, false on error (no space for a new frag).
+ */
+bool libeth_xdp_buff_add_frag(struct libeth_xdp_buff *xdp,
+			      const struct libeth_fqe *fqe,
+			      u32 len)
+{
+	netmem_ref netmem = fqe->netmem;
+
+	if (!xdp_buff_add_frag(&xdp->base, netmem,
+			       fqe->offset + netmem_get_pp(netmem)->p.offset,
+			       len, fqe->truesize))
+		goto recycle;
+
+	return true;
+
+recycle:
+	libeth_rx_recycle_slow(netmem);
+	libeth_xdp_return_buff_slow(xdp);
+
+	return false;
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_buff_add_frag);
+
 /* Tx buffer completion */
 
 static void libeth_xdp_put_netmem_bulk(netmem_ref netmem,
-- 
2.49.0

