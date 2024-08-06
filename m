Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AA2949077
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1EA2340A50;
	Tue,  6 Aug 2024 13:13:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PH21KWupJNDC; Tue,  6 Aug 2024 13:13:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19C9140A0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722950006;
	bh=27Lvw40kPCF+ldEizlysU2DI325ktvTFKBCoQlrzWDA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QzC+36qfmOH/48AVc+DEJ3WGpr2/IrnKloUVdIqIHJhMbrrlFW0CsH+G4U1UbvXhT
	 r0IH2z6i99uncLEWwV8R00FpTDn/niXV+qwEtfFy7hjme4ITEfWqrf2+IUX9qJ9gf9
	 CyWDVNbJuASFs0hbh6nQ+cM09p1M0wU+2sqUb2lDwXHPUIfbyroG4GO0cP1FIco7i8
	 9mQL0JPaMjDPTteTZ5XF4FR1jEzpQ5q6aswZaPQ94pyRptkzvuUmhno8pHL/p+COI0
	 uMRKQdPZYD2H7tbiL0uBzWEFt58880o81HJBqj5XWzTeij6BCh0/0ZG3IKA+tHqJut
	 um0fXmPY1SGXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19C9140A0E;
	Tue,  6 Aug 2024 13:13:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4022E1BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A83D403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtP4l1RUlR4p for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1696840201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1696840201
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1696840201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:17 +0000 (UTC)
X-CSE-ConnectionGUID: VcCbONImRZW4Bd2OT9da7w==
X-CSE-MsgGUID: zHE/e09yQQOjDxjYhu2iOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842100"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842100"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:16 -0700
X-CSE-ConnectionGUID: taD1EY35RdabGiOk9I/FWQ==
X-CSE-MsgGUID: 9l7+llSuTDSY/MharIfiBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475804"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:14 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:34 +0200
Message-ID: <20240806131240.800259-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806131240.800259-1-aleksander.lobakin@intel.com>
References: <20240806131240.800259-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949997; x=1754485997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3fzjogVxQcYKzr4bAR1EWwKcI7WFmK8d8Ts7V39KtYQ=;
 b=inbGD830OE2EAdXAP8uVYqh4KWkoBmbnkgwe/L5TLEJhWL6GztTc8tUw
 wnTvWn+0MAgk8PD57SMtepYvLnIeSq6jqd/GBWcZvXc1yKBUDRAEj97ba
 sNoFiUuf427b0ZLWrMIngzrO8zrn8jOF/aiz51XbgMHsYSr/vJYkq5nHF
 B5ZICUMF4vmxJuyKWC6gmmujPhP9jHzJdcs0LlwQMTsQl26bA7PwaRZuV
 cWmSijL6iEvJbkzPJn0dN02+QvLMErNgiJqicGLZeyLEDp2xSBidK350j
 Juf0TwdA3WxDv/oCJxHfLQO2H/W8+EcO7T7Ld0xgGAgmbI+viZ6LYC/E5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=inbGD830
Subject: [Intel-wired-lan] [PATCH iwl-next 3/9] libie: add Tx buffer
 completion helpers
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Software-side Tx buffers for storing DMA, frame size, skb pointers etc.
are pretty much generic and every driver defines them the same way. The
same can be said for software Tx completions -- same napi_consume_skb()s
and all that...
Add a couple simple wrappers for doing that to stop repeating the old
tale at least within the Intel code. Drivers are free to use 'priv'
member at the end of the structure.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/tx.h | 127 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 include/net/libeth/tx.h

diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
new file mode 100644
index 000000000000..facfeca96858
--- /dev/null
+++ b/include/net/libeth/tx.h
@@ -0,0 +1,127 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_TX_H
+#define __LIBETH_TX_H
+
+#include <net/libeth/stats.h>
+
+/* Tx buffer completion */
+
+/**
+ * enum libeth_sqe_type - type of &libeth_sqe to act on Tx completion
+ * @LIBETH_SQE_EMPTY: unused/empty, no action required
+ * @LIBETH_SQE_CTX: context descriptor with empty SQE, no action required
+ * @LIBETH_SQE_SLAB: kmalloc-allocated buffer, unmap and kfree()
+ * @LIBETH_SQE_FRAG: mapped skb frag, only unmap DMA
+ * @LIBETH_SQE_SKB: &sk_buff, unmap and napi_consume_skb(), update stats
+ */
+enum libeth_sqe_type {
+	LIBETH_SQE_EMPTY		= 0U,
+	LIBETH_SQE_CTX,
+	LIBETH_SQE_SLAB,
+	LIBETH_SQE_FRAG,
+	LIBETH_SQE_SKB,
+};
+
+/**
+ * struct libeth_sqe - represents a Send Queue Element / Tx buffer
+ * @type: type of the buffer, see the enum above
+ * @rs_idx: index of the last buffer from the batch this one was sent in
+ * @raw: slab buffer to free via kfree()
+ * @skb: &sk_buff to consume
+ * @dma: DMA address to unmap
+ * @len: length of the mapped region to unmap
+ * @nr_frags: number of frags in the frame this buffer belongs to
+ * @packets: number of physical packets sent for this frame
+ * @bytes: number of physical bytes sent for this frame
+ * @priv: driver-private scratchpad
+ */
+struct libeth_sqe {
+	enum libeth_sqe_type		type:32;
+	u32				rs_idx;
+
+	union {
+		void				*raw;
+		struct sk_buff			*skb;
+	};
+
+	DEFINE_DMA_UNMAP_ADDR(dma);
+	DEFINE_DMA_UNMAP_LEN(len);
+
+	u32				nr_frags;
+	u32				packets;
+	u32				bytes;
+
+	unsigned long			priv;
+} __aligned_largest;
+
+/**
+ * LIBETH_SQE_CHECK_PRIV - check the driver's private SQE data
+ * @p: type or name of the object the driver wants to fit into &libeth_sqe
+ *
+ * Make sure the driver's private data fits into libeth_sqe::priv. To be used
+ * right after its declaration.
+ */
+#define LIBETH_SQE_CHECK_PRIV(p)					  \
+	static_assert(sizeof(p) <= sizeof_field(struct libeth_sqe, priv))
+
+/**
+ * struct libeth_cq_pp - completion queue poll params
+ * @dev: &device to perform DMA unmapping
+ * @ss: onstack NAPI stats to fill
+ * @napi: whether it's called from the NAPI context
+ *
+ * libeth uses this structure to access objects needed for performing full
+ * Tx complete operation without passing lots of arguments and change the
+ * prototypes each time a new one is added.
+ */
+struct libeth_cq_pp {
+	struct device			*dev;
+	struct libeth_sq_napi_stats	*ss;
+
+	bool				napi;
+};
+
+/**
+ * libeth_tx_complete - perform Tx completion for one SQE
+ * @sqe: SQE to complete
+ * @cp: poll params
+ *
+ * Do Tx complete for all the types of buffers, incl. freeing, unmapping,
+ * updating the stats etc.
+ */
+static inline void libeth_tx_complete(struct libeth_sqe *sqe,
+				      const struct libeth_cq_pp *cp)
+{
+	switch (sqe->type) {
+	case LIBETH_SQE_EMPTY:
+		return;
+	case LIBETH_SQE_SKB:
+	case LIBETH_SQE_FRAG:
+	case LIBETH_SQE_SLAB:
+		dma_unmap_page(cp->dev, dma_unmap_addr(sqe, dma),
+			       dma_unmap_len(sqe, len), DMA_TO_DEVICE);
+		break;
+	default:
+		break;
+	}
+
+	switch (sqe->type) {
+	case LIBETH_SQE_SKB:
+		cp->ss->packets += sqe->packets;
+		cp->ss->bytes += sqe->bytes;
+
+		napi_consume_skb(sqe->skb, cp->napi);
+		break;
+	case LIBETH_SQE_SLAB:
+		kfree(sqe->raw);
+		break;
+	default:
+		break;
+	}
+
+	sqe->type = LIBETH_SQE_EMPTY;
+}
+
+#endif /* __LIBETH_TX_H */
-- 
2.45.2

