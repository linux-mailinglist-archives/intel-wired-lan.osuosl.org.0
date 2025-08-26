Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CB2B36FF8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20F0F6068C;
	Tue, 26 Aug 2025 16:20:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bWQrEPeOW_CG; Tue, 26 Aug 2025 16:20:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5846E60693
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756225239;
	bh=H+UoUQ9lMs04lhjJKF8ifrYhvPOuzF4/pPH079uD3O4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9kdw52hU2URmQdLmwji5OJ814u81hndRLvx6TK+lffZhqUosiJBugD/IwMCTDp5e9
	 wlUBxP75u5zIbvHSNfu3jV2AEkZzKV6avnbEMQeOajJn13yfdGYLUuhZXDBDQoUgiF
	 ST2uNvzG8Kh0Fs2a4pjVyFP/F3fQmd4MBoWufo8WOKUicxWHB86XLwIzQhgzEsyr2K
	 QY2wGCw1CxB0eunSXQbmGq7bF53cpvsl/bZQVQVlqPnOpWis725vqVA0RDSVFpC1lX
	 jHr1Lp/LCAL3fDiB54tA2FqkYipdBIuvc+dTaSD+4yGzjNWYyIyYlEoC1OE9bIZmTu
	 fMv3BDxJHumFg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5846E60693;
	Tue, 26 Aug 2025 16:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B0E22CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADCBD80736
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T431atY0_aVA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:20:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AC8D8072B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AC8D8072B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AC8D8072B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:36 +0000 (UTC)
X-CSE-ConnectionGUID: 2CLmRws8Q9Oc03V7CVOVWw==
X-CSE-MsgGUID: //xv69FqQhOOaZMawxcUwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="46044873"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="46044873"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 09:13:31 -0700
X-CSE-ConnectionGUID: R7x4PETyTROq9x4CHM+oiw==
X-CSE-MsgGUID: fBqtNADmRz6vnUp9R/eIyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200562037"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa002.jf.intel.com with ESMTP; 26 Aug 2025 09:13:27 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 26 Aug 2025 17:54:55 +0200
Message-ID: <20250826155507.2138401-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756225236; x=1787761236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3azXjeLlMdczMc3oGM/koHv9jY0rlImJEFzdohW82Ig=;
 b=DZuoMnUyY/2T9TwwgD2QZ8gGr6mJP1xpqxO7e2sp5FQr/ocqr9ZU33AV
 DDgvFTayUzGMuGi+OXBobEUxAXL+3hUS4JfAS4idQ0WiNnYGiDYhkcfCH
 0vKVduI6wLd81AmApEuyIIhCAoXm27E8cvzNetADBon7b8bOQyALGqTOf
 1gJyo2p2KuXgtyOr32CxqynHLD5kGQL2WbAuQutd2Ijav0qOiQVcJhmRk
 7VZR/gzbVWa2AxiMxOGKQG1u3gKCQ5ENV4M6Em6pqZOAAVIoIJ+fRygkS
 WT52R8j3/88yQwo+VpAwvKKiQwlfG/boqCIh+Tt2Vuya10GJTcjl8J31E
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DZuoMnUy
Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/13] xdp,
 libeth: make the xdp_init_buff() micro-optimization generic
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

Often times the compilers are not able to expand two consecutive 32-bit
writes into one 64-bit on the corresponding architectures. This applies
to xdp_init_buff() called for every received frame (or at least once
per each 64 frames when the frag size is fixed).
Move the not-so-pretty hack from libeth_xdp straight to xdp_init_buff(),
but using a proper union around ::frame_sz and ::flags.
The optimization is limited to LE architectures due to the structure
layout.

One simple example from idpf with the XDP series applied (Clang 22-git,
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE => -O2):

add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-27 (-27)
Function                                     old     new   delta
idpf_vport_splitq_napi_poll                 5076    5049     -27

The perf difference with XDP_DROP is around +0.8-1% which I see as more
than satisfying.

Suggested-by: Simon Horman <horms@kernel.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/xdp.h | 11 +----------
 include/net/xdp.h        | 28 +++++++++++++++++++++++++---
 2 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index f4880b50e804..bc3507edd589 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -1274,7 +1274,6 @@ bool libeth_xdp_buff_add_frag(struct libeth_xdp_buff *xdp,
  * Internal, use libeth_xdp_process_buff() instead. Initializes XDP buffer
  * head with the Rx buffer data: data pointer, length, headroom, and
  * truesize/tailroom. Zeroes the flags.
- * Uses faster single u64 write instead of per-field access.
  */
 static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 					   const struct libeth_fqe *fqe,
@@ -1282,17 +1281,9 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 {
 	const struct page *page = __netmem_to_page(fqe->netmem);
 
-#ifdef __LIBETH_WORD_ACCESS
-	static_assert(offsetofend(typeof(xdp->base), flags) -
-		      offsetof(typeof(xdp->base), frame_sz) ==
-		      sizeof(u64));
-
-	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
-#else
-	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
-#endif
 	xdp_prepare_buff(&xdp->base, page_address(page) + fqe->offset,
 			 pp_page_to_nmdesc(page)->pp->p.offset, len, true);
+	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
 }
 
 /**
diff --git a/include/net/xdp.h b/include/net/xdp.h
index b40f1f96cb11..af60e11b336c 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -85,8 +85,20 @@ struct xdp_buff {
 	void *data_hard_start;
 	struct xdp_rxq_info *rxq;
 	struct xdp_txq_info *txq;
-	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
-	u32 flags; /* supported values defined in xdp_buff_flags */
+
+	union {
+		struct {
+			/* frame size to deduce data_hard_end/tailroom */
+			u32 frame_sz;
+			/* supported values defined in xdp_buff_flags */
+			u32 flags;
+		};
+
+#ifdef __LITTLE_ENDIAN
+		/* Used to micro-optimize xdp_init_buff(), don't use directly */
+		u64 frame_sz_flags_init;
+#endif
+	};
 };
 
 static __always_inline bool xdp_buff_has_frags(const struct xdp_buff *xdp)
@@ -118,9 +130,19 @@ static __always_inline void xdp_buff_set_frag_pfmemalloc(struct xdp_buff *xdp)
 static __always_inline void
 xdp_init_buff(struct xdp_buff *xdp, u32 frame_sz, struct xdp_rxq_info *rxq)
 {
-	xdp->frame_sz = frame_sz;
 	xdp->rxq = rxq;
+
+#ifdef __LITTLE_ENDIAN
+	/*
+	 * Force the compilers to initialize ::flags and assign ::frame_sz with
+	 * one write on 64-bit LE architectures as they're often unable to do
+	 * it themselves.
+	 */
+	xdp->frame_sz_flags_init = frame_sz;
+#else
+	xdp->frame_sz = frame_sz;
 	xdp->flags = 0;
+#endif
 }
 
 static __always_inline void
-- 
2.51.0

