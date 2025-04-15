Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B72BA8A56C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C06980DF6;
	Tue, 15 Apr 2025 17:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHvQEtTM1JW8; Tue, 15 Apr 2025 17:29:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0350480C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738158;
	bh=OlhaHM/GwB8btYi8iZJdF0lGt02Kg5xhJvRpCGtFlos=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=If+e7hP42Krqnr9BIbNv/wRAZvEe6miRRWLL/bLho7ULeSlLDzSYjOyhNwYTNtTuo
	 CB4f/ViE0JsAOffwbWxsVZ5udr/gPqFlZOfUzX6hDireOV1O7rNAaA6RLaQl0jlgOF
	 d+5iflzIK6P1VhQDWgpUvfldgcf9yr6m4qKPC9Z2wz40KkZEaXcFdFPNiRFD2eySuv
	 VXh/clfy0ZAga9F+OYHV8JCK7vMlbG0DY9hlZ5dRH090xi8+JfDYm+KPhzqZEuyomS
	 0uzANmqJosxsDygh/N9Kt9y8zPgQIwaOT6f+VDkbAKN4vezQtNteJpMEvMXJ3WjQhF
	 /zr6dNYj4BHPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0350480C39;
	Tue, 15 Apr 2025 17:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DBC2A200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCA0C83409
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 71iUP3-gdBOe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:29:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E942480C39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E942480C39
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E942480C39
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:14 +0000 (UTC)
X-CSE-ConnectionGUID: PKyFxwTVTSqAn+hU0ixIYQ==
X-CSE-MsgGUID: 5xujDS32TLCEbXJ3bsr0Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275674"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275674"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:29:15 -0700
X-CSE-ConnectionGUID: 4Byl5XnjTMyQJR7gb//wBg==
X-CSE-MsgGUID: qHIfDDKVR/+J2Hy0NPPr0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729695"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:29:10 -0700
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
Date: Tue, 15 Apr 2025 19:28:14 +0200
Message-ID: <20250415172825.3731091-6-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738155; x=1776274155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8x3F9YcvokycY+S+ycezTyvgntmJbRu3Xyb0iYQg65g=;
 b=egWdb7mhIsD2AveY2HBKOCJjZO9sayqvWL/+FGAam3NyRfYut1l64Q5A
 cQoeJRMpfkAIcKiRzlWeIQ1TakTAMWbBkR8BuDKBGNiclEqWhCgYSnSg0
 ny15Sgt1kHvQCetm9+JAv9qVE3ay6vBiZFWVnaU4DAXt4DFOby44Yrfxv
 oyYyHCM2eib+ow7L5glpz6n9LBgFJELB5HnpSkuTmMWC1FqUi9b94YyJi
 SVrN7OaWjiz5lEJvLRAieWgHDexSvGqa3A66xvg67DeC06y7qdQs08qYx
 /9tgXY/AsFb2iaX1pTdFTTY+i+B52o/Zr1CzwwNurAh8Vch2gxfWQT4xi
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=egWdb7mh
Subject: [Intel-wired-lan] [PATCH iwl-next 05/16] libeth: xdp: add XDPSQE
 completion helpers
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

Similarly to libeth_tx_complete(), add libeth_xdp_complete_tx() to
handle XDP_TX and xmit buffers. Both use bulk return under the hood.

Also add out of line libeth_tx_complete_any() which handles both
regular and XDP frames (if libeth_xdp is loaded), for example,
to call on queue destroy, where we don't need inlining but
convenience.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libeth/Makefile |  1 +
 include/net/libeth/types.h                 | 21 ++++++-
 drivers/net/ethernet/intel/libeth/priv.h   | 26 +++++++++
 include/net/libeth/tx.h                    | 13 ++++-
 include/net/libeth/xdp.h                   | 66 ++++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/tx.c     | 38 +++++++++++++
 drivers/net/ethernet/intel/libeth/xdp.c    | 58 +++++++++++++++++++
 7 files changed, 221 insertions(+), 2 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/libeth/priv.h
 create mode 100644 drivers/net/ethernet/intel/libeth/tx.c

diff --git a/drivers/net/ethernet/intel/libeth/Makefile b/drivers/net/ethernet/intel/libeth/Makefile
index 9ba78f463f2e..51669840ee06 100644
--- a/drivers/net/ethernet/intel/libeth/Makefile
+++ b/drivers/net/ethernet/intel/libeth/Makefile
@@ -4,6 +4,7 @@
 obj-$(CONFIG_LIBETH)		+= libeth.o
 
 libeth-y			:= rx.o
+libeth-y			+= tx.o
 
 obj-$(CONFIG_LIBETH_XDP)	+= libeth_xdp.o
 
diff --git a/include/net/libeth/types.h b/include/net/libeth/types.h
index 603825e45133..ad7a5c1f119f 100644
--- a/include/net/libeth/types.h
+++ b/include/net/libeth/types.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (C) 2024 Intel Corporation */
+/* Copyright (C) 2024-2025 Intel Corporation */
 
 #ifndef __LIBETH_TYPES_H
 #define __LIBETH_TYPES_H
@@ -22,4 +22,23 @@ struct libeth_sq_napi_stats {
 	};
 };
 
+/**
+ * struct libeth_xdpsq_napi_stats - "hot" counters to update in XDP Tx
+ *				    completion loop
+ * @packets: completed frames counter
+ * @bytes: sum of bytes of completed frames above
+ * @fragments: sum of fragments of completed S/G frames
+ * @raw: alias to access all the fields as an array
+ */
+struct libeth_xdpsq_napi_stats {
+	union {
+		struct {
+							u32 packets;
+							u32 bytes;
+							u32 fragments;
+		};
+		DECLARE_FLEX_ARRAY(u32, raw);
+	};
+};
+
 #endif /* __LIBETH_TYPES_H */
diff --git a/drivers/net/ethernet/intel/libeth/priv.h b/drivers/net/ethernet/intel/libeth/priv.h
new file mode 100644
index 000000000000..1bd6e2d7a3e7
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/priv.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef __LIBETH_PRIV_H
+#define __LIBETH_PRIV_H
+
+#include <linux/types.h>
+
+/* XDP */
+
+struct skb_shared_info;
+struct xdp_frame_bulk;
+
+struct libeth_xdp_ops {
+	void	(*bulk)(const struct skb_shared_info *sinfo,
+			struct xdp_frame_bulk *bq, bool frags);
+};
+
+void libeth_attach_xdp(const struct libeth_xdp_ops *ops);
+
+static inline void libeth_detach_xdp(void)
+{
+	libeth_attach_xdp(NULL);
+}
+
+#endif /* __LIBETH_PRIV_H */
diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
index e2b62a8b4c57..33b9bb22f6ac 100644
--- a/include/net/libeth/tx.h
+++ b/include/net/libeth/tx.h
@@ -84,7 +84,10 @@ struct libeth_sqe {
 /**
  * struct libeth_cq_pp - completion queue poll params
  * @dev: &device to perform DMA unmapping
+ * @bq: XDP frame bulk to combine return operations
  * @ss: onstack NAPI stats to fill
+ * @xss: onstack XDPSQ NAPI stats to fill
+ * @xdp_tx: number of XDP frames processed
  * @napi: whether it's called from the NAPI context
  *
  * libeth uses this structure to access objects needed for performing full
@@ -93,7 +96,13 @@ struct libeth_sqe {
  */
 struct libeth_cq_pp {
 	struct device			*dev;
-	struct libeth_sq_napi_stats	*ss;
+	struct xdp_frame_bulk		*bq;
+
+	union {
+		struct libeth_sq_napi_stats	*ss;
+		struct libeth_xdpsq_napi_stats	*xss;
+	};
+	u32				xdp_tx;
 
 	bool				napi;
 };
@@ -139,4 +148,6 @@ static inline void libeth_tx_complete(struct libeth_sqe *sqe,
 	sqe->type = LIBETH_SQE_EMPTY;
 }
 
+void libeth_tx_complete_any(struct libeth_sqe *sqe, struct libeth_cq_pp *cp);
+
 #endif /* __LIBETH_TX_H */
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 5438271662bd..0db6f9c56516 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -817,4 +817,70 @@ static inline void __libeth_xdp_return_buff(struct libeth_xdp_buff *xdp,
 	xdp->data = NULL;
 }
 
+/* Tx buffer completion */
+
+void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
+				 struct xdp_frame_bulk *bq, bool frags);
+
+/**
+ * __libeth_xdp_complete_tx - complete sent XDPSQE
+ * @sqe: SQ element / Tx buffer to complete
+ * @cp: Tx polling/completion params
+ * @bulk: internal callback to bulk-free ``XDP_TX`` buffers
+ *
+ * Use the non-underscored version in drivers instead. This one is shared
+ * internally with libeth_tx_complete_any().
+ * Complete an XDPSQE of any type of XDP frame. This includes DMA unmapping
+ * when needed, buffer freeing, stats update, and SQE invalidation.
+ */
+static __always_inline void
+__libeth_xdp_complete_tx(struct libeth_sqe *sqe, struct libeth_cq_pp *cp,
+			 typeof(libeth_xdp_return_buff_bulk) bulk)
+{
+	enum libeth_sqe_type type = sqe->type;
+
+	switch (type) {
+	case LIBETH_SQE_EMPTY:
+		return;
+	case LIBETH_SQE_XDP_XMIT:
+	case LIBETH_SQE_XDP_XMIT_FRAG:
+		dma_unmap_page(cp->dev, dma_unmap_addr(sqe, dma),
+			       dma_unmap_len(sqe, len), DMA_TO_DEVICE);
+		break;
+	default:
+		break;
+	}
+
+	switch (type) {
+	case LIBETH_SQE_XDP_TX:
+		bulk(sqe->sinfo, cp->bq, sqe->nr_frags != 1);
+		break;
+	case LIBETH_SQE_XDP_XMIT:
+		xdp_return_frame_bulk(sqe->xdpf, cp->bq);
+		break;
+	default:
+		break;
+	}
+
+	switch (type) {
+	case LIBETH_SQE_XDP_TX:
+	case LIBETH_SQE_XDP_XMIT:
+		cp->xdp_tx -= sqe->nr_frags;
+
+		cp->xss->packets++;
+		cp->xss->bytes += sqe->bytes;
+		break;
+	default:
+		break;
+	}
+
+	sqe->type = LIBETH_SQE_EMPTY;
+}
+
+static inline void libeth_xdp_complete_tx(struct libeth_sqe *sqe,
+					  struct libeth_cq_pp *cp)
+{
+	__libeth_xdp_complete_tx(sqe, cp, libeth_xdp_return_buff_bulk);
+}
+
 #endif /* __LIBETH_XDP_H */
diff --git a/drivers/net/ethernet/intel/libeth/tx.c b/drivers/net/ethernet/intel/libeth/tx.c
new file mode 100644
index 000000000000..227c841ab16a
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/tx.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#define DEFAULT_SYMBOL_NAMESPACE	"LIBETH"
+
+#include <net/libeth/xdp.h>
+
+#include "priv.h"
+
+/* Tx buffer completion */
+
+DEFINE_STATIC_CALL_NULL(bulk, libeth_xdp_return_buff_bulk);
+
+/**
+ * libeth_tx_complete_any - perform Tx completion for one SQE of any type
+ * @sqe: Tx buffer to complete
+ * @cp: polling params
+ *
+ * Can be used to complete both regular and XDP SQEs, for example when
+ * destroying queues.
+ * When libeth_xdp is not loaded, XDPSQEs won't be handled.
+ */
+void libeth_tx_complete_any(struct libeth_sqe *sqe, struct libeth_cq_pp *cp)
+{
+	if (sqe->type >= __LIBETH_SQE_XDP_START)
+		__libeth_xdp_complete_tx(sqe, cp, static_call(bulk));
+	else
+		libeth_tx_complete(sqe, cp);
+}
+EXPORT_SYMBOL_GPL(libeth_tx_complete_any);
+
+/* Module */
+
+void libeth_attach_xdp(const struct libeth_xdp_ops *ops)
+{
+	static_call_update(bulk, ops ? ops->bulk : NULL);
+}
+EXPORT_SYMBOL_GPL(libeth_attach_xdp);
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
index 0908520d1d38..904b19df4f79 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -5,6 +5,8 @@
 
 #include <net/libeth/xdp.h>
 
+#include "priv.h"
+
 /* ``XDP_TX`` bulking */
 
 static void __cold
@@ -113,6 +115,62 @@ void __cold libeth_xdp_return_buff_slow(struct libeth_xdp_buff *xdp)
 }
 EXPORT_SYMBOL_GPL(libeth_xdp_return_buff_slow);
 
+/* Tx buffer completion */
+
+static void libeth_xdp_put_netmem_bulk(netmem_ref netmem,
+				       struct xdp_frame_bulk *bq)
+{
+	if (unlikely(bq->count == XDP_BULK_QUEUE_SIZE))
+		xdp_flush_frame_bulk(bq);
+
+	bq->q[bq->count++] = netmem;
+}
+
+/**
+ * libeth_xdp_return_buff_bulk - free &xdp_buff as part of a bulk
+ * @sinfo: shared info corresponding to the buffer
+ * @bq: XDP frame bulk to store the buffer
+ * @frags: whether the buffer has frags
+ *
+ * Same as xdp_return_frame_bulk(), but for &libeth_xdp_buff, speeds up Tx
+ * completion of ``XDP_TX`` buffers and allows to free them in same bulks
+ * with &xdp_frame buffers.
+ */
+void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
+				 struct xdp_frame_bulk *bq, bool frags)
+{
+	if (!frags)
+		goto head;
+
+	for (u32 i = 0; i < sinfo->nr_frags; i++)
+		libeth_xdp_put_netmem_bulk(skb_frag_netmem(&sinfo->frags[i]),
+					   bq);
+
+head:
+	libeth_xdp_put_netmem_bulk(virt_to_netmem(sinfo), bq);
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_return_buff_bulk);
+
+/* Module */
+
+static const struct libeth_xdp_ops xdp_ops __initconst = {
+	.bulk	= libeth_xdp_return_buff_bulk,
+};
+
+static int __init libeth_xdp_module_init(void)
+{
+	libeth_attach_xdp(&xdp_ops);
+
+	return 0;
+}
+module_init(libeth_xdp_module_init);
+
+static void __exit libeth_xdp_module_exit(void)
+{
+	libeth_detach_xdp();
+}
+module_exit(libeth_xdp_module_exit);
+
 MODULE_DESCRIPTION("Common Ethernet library - XDP infra");
 MODULE_IMPORT_NS("LIBETH");
 MODULE_LICENSE("GPL");
-- 
2.49.0

