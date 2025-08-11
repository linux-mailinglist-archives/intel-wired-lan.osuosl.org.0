Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F16B2117D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C8C24152F;
	Mon, 11 Aug 2025 16:20:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lW8PzI4nfm2r; Mon, 11 Aug 2025 16:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92996414B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754929199;
	bh=IYMH1Oh/BxhZgwfTxGohbhg7QdzjX6U99KrxJJsp6I0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jTWWt4iibbHeknidkHB/pgtaa/jHah6Oap0rRHLeWcXf+7ODUlBtgH9RrcKVnoxYm
	 /n+T8kcQ8A+oWmDVpOJiU/XY9X80TF+pgLM6ILZF4qoW+DdoNmP7vU8Vxf9UTkQl5I
	 SqQBtUvF6gGOB7GYu2MuztRDwytQYnikcmI/8pjPz9TcsVcxXSJ0oNzcpffk8FdeE8
	 wYv4S8ZWcDJ1uyStG59J2Ajs5AnrOEjSsYNvz9WCRMRZWScUNNFM2CROe5Lvcqg5hS
	 en7n1ntyL79JsvvZhc9LlfS/YSX4O0SfSwdBDyNKGn89L34zIhBwQK93I/jeLO0vDg
	 62xZYLPbMGnnw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92996414B9;
	Mon, 11 Aug 2025 16:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15DB9138
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F025F6143E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6U7YbV__2QFI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:19:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4343261068
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4343261068
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4343261068
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:19:57 +0000 (UTC)
X-CSE-ConnectionGUID: a2g142ZATw64b+VsVsG43w==
X-CSE-MsgGUID: Zi9I9UJJRm+6O0hJEIHD2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56899533"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56899533"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:12:49 -0700
X-CSE-ConnectionGUID: zlFoOzSiQFiXpJa2tndgIg==
X-CSE-MsgGUID: xVcgcB+VRjivU8EwObLI5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165163149"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa006.jf.intel.com with ESMTP; 11 Aug 2025 09:12:45 -0700
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
Date: Mon, 11 Aug 2025 18:10:32 +0200
Message-ID: <20250811161044.32329-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811161044.32329-1-aleksander.lobakin@intel.com>
References: <20250811161044.32329-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754929197; x=1786465197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KC9rYeXWUjRlWYhn01scgcJNTloIqkp3Bdcmm78sTrg=;
 b=DRgMKpsKwNVYCuDOD1G4e1psEt9iG3llOLdS/zyrSQbC//As/SJS2HCv
 wDFN3K+dyXdmFPphemdM4MKBXzqtmFrrQxVEx56WQqbC4YK6wx/9UTF2I
 xTiQXEVoTMsGriCsfB148KrrIqB6z+MNIs7tIcUbsMbbBlPk9vQC7OuGF
 fhLT6jdmWJQHiOyxFpa93SqtZ/40mfjc9yCVMabvBRExOCZeR3ghHrf+J
 esgdNB0a3SYelBbUjQ304fV8GWuoFYKQ1STDch9U+DONlaf9rNudx89IO
 dEIY8KN2SaKxOFb5UC8gZO3SmjBlZCrmPYegeOZM3N4USAnInEHzFEuia
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DRgMKpsK
Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/13] xdp,
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
2.50.1

