Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9182BAD794C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7879408D3;
	Thu, 12 Jun 2025 17:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vNPemFughc3s; Thu, 12 Jun 2025 17:49:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 970AE408D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750543;
	bh=PzYf4ga78vKxvpeGW88pgJbkmrryWjQoC6V9yp6l1Fo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8iNdbYod4FKM4hL8qoGnLu+2qv2YCPCIf+Ixv1pk9Hg0MnFfWjpLDGteVcp9qiFZV
	 WTE9ZPMoj41csYgBqBWDVq7JsohkiByUfEW2P0IT8AQfdMn58Hh2LryxgaZQzWPxZ4
	 xPN2NuLtc4DGZnPsE5TKimTzuQ/oXF4oq8DNtGinmn2SmrwWw2mnBoUnP47JBdbKNl
	 JdgafnrF2OKp5MmzPKwZhg+v3lx0WEtqYblz2p+HXwlctfQGB+Bk2y35O6J2Du7wsx
	 mPRUq/szzyfC1K5ocu5/sZt8XPWlf5uuClJOYbFlvSDJaY2bttP97HGWCEiwmCJGCm
	 gRKb4LUAKA9eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 970AE408D5;
	Thu, 12 Jun 2025 17:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 420A51BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3365481EA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MAFZ7kTtYSgf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:09:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5BF1481E8E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BF1481E8E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BF1481E8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:55 +0000 (UTC)
X-CSE-ConnectionGUID: jl4ZLVwVTjeSdqtDaYQ9eA==
X-CSE-MsgGUID: nKDBojAfQOiAr5g2d3s4UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55738921"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55738921"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:09:55 -0700
X-CSE-ConnectionGUID: 5K7g7SUvRrmcrnTgMqSUGg==
X-CSE-MsgGUID: fH+DRU8xQkGDAIS/JITcGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468573"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:09:50 -0700
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
Date: Thu, 12 Jun 2025 18:02:23 +0200
Message-ID: <20250612160234.68682-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744596; x=1781280596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IeTF3yT3CfVlFvKoYdrPUFgYM0MKJpsLCIdKZwScmRI=;
 b=f6IJSjv3t/bfr7jpB3A/Z5j6H06JmXEO34Bls5DVVqhpEBFJ/E/UNg9s
 12OtGCW5T9+ykPG+Tk9UmWs0SD7H4lupd+Kz1kmXsvPb/1CvkKUozD1nC
 XjGNET9zbE1hLe9x67DRoZYKUBubqYVLgiTCDlSELPdTg3j/BNCmrlP78
 WMOLVykUYjoApLZYAs0Omnjqwtn6NdKXPm16BeHaLkfkvKRSakjWviOmV
 lIQDrceNmA9iMBt55qqVfhFHUiQ054iKxzm6Wbsn0vpMl7gueyTxMpRaT
 bDViNFBmXkeDq6xCQZYOnFZb6gcPW8XoHVPcgp91qP9aUtHmui1dcTISY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f6IJSjv3
Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/17] libeth: xdp: add XDPSQE
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
index 839001d901b2..c47ecba56020 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -824,4 +824,70 @@ static inline void __libeth_xdp_return_buff(struct libeth_xdp_buff *xdp,
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
index c65ea5d2746a..c29a1a0dfc57 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -7,6 +7,8 @@
 
 #include <net/libeth/xdp.h>
 
+#include "priv.h"
+
 /* ``XDP_TX`` bulking */
 
 static void __cold
@@ -115,6 +117,62 @@ void __cold libeth_xdp_return_buff_slow(struct libeth_xdp_buff *xdp)
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

