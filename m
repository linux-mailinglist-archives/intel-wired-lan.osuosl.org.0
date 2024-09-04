Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9E296C2E8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:51:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56D42608B0;
	Wed,  4 Sep 2024 15:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VACA6mPsUA5t; Wed,  4 Sep 2024 15:51:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B637608A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725465085;
	bh=Op0V2wZZvhmFiCHvEQKs/s1Ds5Pd+R2tdTyYtzvkScA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q4nLaGe3xEdrxN0MowP3mv9QyEB0BZIkQb+BVxEo2LSTBail0/OPnI0tXXbGEY6JN
	 0cZqvuDKOMEFtv3OktddrAo1AfbhgftFuOBJxPxql0ZkJG4qZ2hybD6Jt5sbReJ6q3
	 mQ2hci/dUdmSNA/PTSohuen3KvqgwCz3LEHakMA5yJlPnVMRFfMZNfIMCtgYQhOStA
	 FQddyj0L8uFIoun+kWR8Zxf60fkE+th3bc6fSSBJ8IMEONp8zWSPhff9PPE3bGEmtD
	 TCQwOwhAfXKu63ZAgNaWaagWiKr07cJinT1jdOkCKUtBB6Y+MT9bAGZdVOaJQwjd9i
	 psk1DxdJprGhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B637608A4;
	Wed,  4 Sep 2024 15:51:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E27111BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB909608B0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3e6R_RLTIeNt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 15:51:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C13B3607C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C13B3607C3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C13B3607C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:21 +0000 (UTC)
X-CSE-ConnectionGUID: zYl/JnKWQOiMgaaoE47N7w==
X-CSE-MsgGUID: BKw+mhPmRzea2+nU2x2VOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34737134"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34737134"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:51:21 -0700
X-CSE-ConnectionGUID: GaxMN3nIS/GGrC2LA+Y/IA==
X-CSE-MsgGUID: 4boM2xAERZihTXmohc5EmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66041824"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 04 Sep 2024 08:51:19 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Sep 2024 17:47:43 +0200
Message-ID: <20240904154748.2114199-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
References: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725465081; x=1757001081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+c6k8kZUFsJQTANSFsKNMQJBLtPKazDUI2uf9Cm4mPk=;
 b=ZEscT6SsmvmWflkS96yrPvBW0Ba7iOwsA3BZJOgX5yi05sIPXonVt884
 PqljMlC9TMSby6MMj+EY+RSfPF6A2+JTDYBpinZoyTu/gDuqPvgzBS/lb
 atuEt6Db5go5H8WlKVLiqyoP5cTXe52ZBoOBo7uWYkCUTI6tltY+ot6SX
 GwjjHL9qg1lAm8wtych64MqdnwOzc2I3CnJKufL8t58iS/o5EASx4O/A5
 OWDj4FUYRVcP9ODuRtpLAchAmOqt2tTK4fAxyb7F3Di0RXAro8ic1lqrb
 X206TU0oITNtHA7k9H/GFB5qS+tGFkT8/PWhmbJQeJzwvNsS8pXYp60UR
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZEscT6Ss
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/6] libeth: add Tx buffer
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
 include/net/libeth/types.h |  25 +++++++
 include/net/libeth/tx.h    | 129 +++++++++++++++++++++++++++++++++++++
 2 files changed, 154 insertions(+)
 create mode 100644 include/net/libeth/types.h
 create mode 100644 include/net/libeth/tx.h

diff --git a/include/net/libeth/types.h b/include/net/libeth/types.h
new file mode 100644
index 000000000000..603825e45133
--- /dev/null
+++ b/include/net/libeth/types.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_TYPES_H
+#define __LIBETH_TYPES_H
+
+#include <linux/types.h>
+
+/**
+ * struct libeth_sq_napi_stats - "hot" counters to update in Tx completion loop
+ * @packets: completed frames counter
+ * @bytes: sum of bytes of completed frames above
+ * @raw: alias to access all the fields as an array
+ */
+struct libeth_sq_napi_stats {
+	union {
+		struct {
+							u32 packets;
+							u32 bytes;
+		};
+		DECLARE_FLEX_ARRAY(u32, raw);
+	};
+};
+
+#endif /* __LIBETH_TYPES_H */
diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
new file mode 100644
index 000000000000..35614f9523f6
--- /dev/null
+++ b/include/net/libeth/tx.h
@@ -0,0 +1,129 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_TX_H
+#define __LIBETH_TX_H
+
+#include <linux/skbuff.h>
+
+#include <net/libeth/types.h>
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
2.46.0

