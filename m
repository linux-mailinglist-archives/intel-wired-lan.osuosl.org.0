Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4406CAD794E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3400613FC;
	Thu, 12 Jun 2025 17:49:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwd34rNgNbK6; Thu, 12 Jun 2025 17:49:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64CFB610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750542;
	bh=eCbIQUQf/Hkfj05xU6+MNtHP3Ux9ClucISFoyk+NFVU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gi4xx2HCSE0X/DQB6i2iW2KWeLcibjQjZcAciJXO6Ec8CGypdhq9geV5CmVA5pmCT
	 QS1/cBvOJG2tlyP4q0jyXmwwCI2XaXZb3ZxmXIQaDgqoZszj4ilwt3R4ZPdbiDFiRp
	 MgFvHtZNsk7i+qrvA3WCdcMq0ZBPSa8KZytzrld/nio9qNWRvR9UJsJpjnPOpW+IVT
	 c7kkq5fxmmdZptro4qMY4mebhu6E3AMENxWt83crTFnhe05UggRGNcjvg7hkOO0Hzu
	 4UCaLuryX1ss7cZ449TUoRyL0THxyouNJLZ382iBbId+dEbnKDW+iDZK8AUag0snk3
	 eBQGafgrqlg+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64CFB610A6;
	Thu, 12 Jun 2025 17:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EBDC61E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD91481E8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id alcvDA5teb2y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:09:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C2F081BBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C2F081BBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C2F081BBD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:44 +0000 (UTC)
X-CSE-ConnectionGUID: Z0+sTw2gRyiqE7FI4SUU0A==
X-CSE-MsgGUID: 6hd6XURsT9+Wh0t9vaZ+4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55738883"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55738883"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:09:45 -0700
X-CSE-ConnectionGUID: DYU2wPstROOnJ+21Q4poGA==
X-CSE-MsgGUID: hviYnfpZSdudGOK4aDVNyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468567"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:09:40 -0700
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
Date: Thu, 12 Jun 2025 18:02:21 +0200
Message-ID: <20250612160234.68682-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744585; x=1781280585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1t/Sj9jARy1yt89lCGN0jqDrfzzsJnURcm8L7/IBimk=;
 b=mV0yG3TTcws/0OEYeGXspqS/m8G127Z7coLXAt+71JcCnEUlpDSJJ/49
 697jdXDJ3qLeYKPbMSfvk49PCaYAqGyrNvoZlVcQFAJMR0Z4YDQJjfTmX
 lQOFOd14Pl4fIWy+fYecaZWh4va1xrzBTAyXoy6lsg1dEwdtY9pdd2bLm
 AwxRkwtv5jF9Ay9Pma76x/rm4zfLjWsjgVkyVlx+rMnqJ97DXL7xAFMQV
 DXUW50VMm39q7y6P7T7LDDllrXLDSqMkt23TcrxpUDFgw1q2WSB5+uuQE
 2mPrdUUiuEyGXch3u7Hn/M2nW6BW/rmopeAkRkoQKz5TYbPS8uAJ6BPCX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mV0yG3TT
Subject: [Intel-wired-lan] [PATCH iwl-next v2 04/17] libeth: xdp: add XDP_TX
 buffers sending
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

Start adding XDP-specific code to libeth, namely handling XDP_TX buffers
(only sending).
The idea is that we accumulate up to 16 buffers on the stack, then,
if either the limit is reached or the polling is finished, flush them
at once with only one XDPSQ cleaning (if needed). The main sending
function will be aware of the sending budget and already have all the
info to send the buffers, so it can't fail.
Drivers need to provide 2 inline callbacks to the main sending function:
for cleaning an XDPSQ and for filling descriptors; the library code
takes care of the rest.
Note that unlike the generic code, multi-buffer support is not wrapped
here with unlikely() to not hurt header split setups.

&libeth_xdp_buff is a simple extension over &xdp_buff which has a direct
pointer to the corresponding Rx descriptor (and, luckily, precisely 1 CL
size and 16-byte alignment on x86_64).

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # xmit logic
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libeth/Kconfig  |  10 +-
 drivers/net/ethernet/intel/libeth/Makefile |   6 +-
 include/net/libeth/tx.h                    |  11 +-
 include/net/libeth/xdp.h                   | 541 +++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/xdp.c    |  89 ++++
 5 files changed, 652 insertions(+), 5 deletions(-)
 create mode 100644 include/net/libeth/xdp.h
 create mode 100644 drivers/net/ethernet/intel/libeth/xdp.c

diff --git a/drivers/net/ethernet/intel/libeth/Kconfig b/drivers/net/ethernet/intel/libeth/Kconfig
index 480293b71dbc..d8c4926574fb 100644
--- a/drivers/net/ethernet/intel/libeth/Kconfig
+++ b/drivers/net/ethernet/intel/libeth/Kconfig
@@ -1,9 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0-only
-# Copyright (C) 2024 Intel Corporation
+# Copyright (C) 2024-2025 Intel Corporation
 
 config LIBETH
-	tristate
+	tristate "Common Ethernet library (libeth)" if COMPILE_TEST
 	select PAGE_POOL
 	help
 	  libeth is a common library containing routines shared between several
 	  drivers, but not yet promoted to the generic kernel API.
+
+config LIBETH_XDP
+	tristate "Common XDP library (libeth_xdp)" if COMPILE_TEST
+	select LIBETH
+	help
+	  XDP helpers based on libeth hotpath management.
diff --git a/drivers/net/ethernet/intel/libeth/Makefile b/drivers/net/ethernet/intel/libeth/Makefile
index 52492b081132..9ba78f463f2e 100644
--- a/drivers/net/ethernet/intel/libeth/Makefile
+++ b/drivers/net/ethernet/intel/libeth/Makefile
@@ -1,6 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0-only
-# Copyright (C) 2024 Intel Corporation
+# Copyright (C) 2024-2025 Intel Corporation
 
 obj-$(CONFIG_LIBETH)		+= libeth.o
 
 libeth-y			:= rx.o
+
+obj-$(CONFIG_LIBETH_XDP)	+= libeth_xdp.o
+
+libeth_xdp-y			+= xdp.o
diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
index 35614f9523f6..3e68d11914f7 100644
--- a/include/net/libeth/tx.h
+++ b/include/net/libeth/tx.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-/* Copyright (C) 2024 Intel Corporation */
+/* Copyright (C) 2024-2025 Intel Corporation */
 
 #ifndef __LIBETH_TX_H
 #define __LIBETH_TX_H
@@ -12,11 +12,13 @@
 
 /**
  * enum libeth_sqe_type - type of &libeth_sqe to act on Tx completion
- * @LIBETH_SQE_EMPTY: unused/empty, no action required
+ * @LIBETH_SQE_EMPTY: unused/empty OR XDP_TX frag, no action required
  * @LIBETH_SQE_CTX: context descriptor with empty SQE, no action required
  * @LIBETH_SQE_SLAB: kmalloc-allocated buffer, unmap and kfree()
  * @LIBETH_SQE_FRAG: mapped skb frag, only unmap DMA
  * @LIBETH_SQE_SKB: &sk_buff, unmap and napi_consume_skb(), update stats
+ * @__LIBETH_SQE_XDP_START: separator between skb and XDP types
+ * @LIBETH_SQE_XDP_TX: &skb_shared_info, libeth_xdp_return_buff_bulk(), stats
  */
 enum libeth_sqe_type {
 	LIBETH_SQE_EMPTY		= 0U,
@@ -24,6 +26,9 @@ enum libeth_sqe_type {
 	LIBETH_SQE_SLAB,
 	LIBETH_SQE_FRAG,
 	LIBETH_SQE_SKB,
+
+	__LIBETH_SQE_XDP_START,
+	LIBETH_SQE_XDP_TX		= __LIBETH_SQE_XDP_START,
 };
 
 /**
@@ -32,6 +37,7 @@ enum libeth_sqe_type {
  * @rs_idx: index of the last buffer from the batch this one was sent in
  * @raw: slab buffer to free via kfree()
  * @skb: &sk_buff to consume
+ * @sinfo: skb shared info of an XDP_TX frame
  * @dma: DMA address to unmap
  * @len: length of the mapped region to unmap
  * @nr_frags: number of frags in the frame this buffer belongs to
@@ -46,6 +52,7 @@ struct libeth_sqe {
 	union {
 		void				*raw;
 		struct sk_buff			*skb;
+		struct skb_shared_info		*sinfo;
 	};
 
 	DEFINE_DMA_UNMAP_ADDR(dma);
diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
new file mode 100644
index 000000000000..4988453a3d70
--- /dev/null
+++ b/include/net/libeth/xdp.h
@@ -0,0 +1,541 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Intel Corporation */
+
+#ifndef __LIBETH_XDP_H
+#define __LIBETH_XDP_H
+
+#include <linux/bpf_trace.h>
+#include <linux/unroll.h>
+
+#include <net/libeth/rx.h>
+#include <net/libeth/tx.h>
+#include <net/xsk_buff_pool.h>
+
+/*
+ * &xdp_buff_xsk is the largest structure &libeth_xdp_buff gets casted to,
+ * pick maximum pointer-compatible alignment.
+ */
+#define __LIBETH_XDP_BUFF_ALIGN						      \
+	(IS_ALIGNED(sizeof(struct xdp_buff_xsk), 16) ? 16 :		      \
+	 IS_ALIGNED(sizeof(struct xdp_buff_xsk), 8) ? 8 :		      \
+	 sizeof(long))
+
+/**
+ * struct libeth_xdp_buff - libeth extension over &xdp_buff
+ * @base: main &xdp_buff
+ * @data: shortcut for @base.data
+ * @desc: RQ descriptor containing metadata for this buffer
+ * @priv: driver-private scratchspace
+ *
+ * The main reason for this is to have a pointer to the descriptor to be able
+ * to quickly get frame metadata from xdpmo and driver buff-to-xdp callbacks
+ * (as well as bigger alignment).
+ * Pointer/layout-compatible with &xdp_buff and &xdp_buff_xsk.
+ */
+struct libeth_xdp_buff {
+	union {
+		struct xdp_buff		base;
+		void			*data;
+	};
+
+	const void			*desc;
+	unsigned long			priv[]
+					__aligned(__LIBETH_XDP_BUFF_ALIGN);
+} __aligned(__LIBETH_XDP_BUFF_ALIGN);
+static_assert(offsetof(struct libeth_xdp_buff, data) ==
+	      offsetof(struct xdp_buff_xsk, xdp.data));
+static_assert(offsetof(struct libeth_xdp_buff, desc) ==
+	      offsetof(struct xdp_buff_xsk, cb));
+static_assert(IS_ALIGNED(sizeof(struct xdp_buff_xsk),
+			 __alignof(struct libeth_xdp_buff)));
+
+/* Common Tx bits */
+
+/**
+ * enum - libeth_xdp internal Tx flags
+ * @LIBETH_XDP_TX_BULK: one bulk size at which it will be flushed to the queue
+ * @LIBETH_XDP_TX_BATCH: batch size for which the queue fill loop is unrolled
+ * @LIBETH_XDP_TX_DROP: indicates the send function must drop frames not sent
+ */
+enum {
+	LIBETH_XDP_TX_BULK		= DEV_MAP_BULK_SIZE,
+	LIBETH_XDP_TX_BATCH		= 8,
+
+	LIBETH_XDP_TX_DROP		= BIT(0),
+};
+
+/**
+ * enum - &libeth_xdp_tx_frame and &libeth_xdp_tx_desc flags
+ * @LIBETH_XDP_TX_LEN: only for ``XDP_TX``, [15:0] of ::len_fl is actual length
+ * @LIBETH_XDP_TX_FIRST: indicates the frag is the first one of the frame
+ * @LIBETH_XDP_TX_LAST: whether the frag is the last one of the frame
+ * @LIBETH_XDP_TX_MULTI: whether the frame contains several frags
+ * @LIBETH_XDP_TX_FLAGS: only for ``XDP_TX``, [31:16] of ::len_fl is flags
+ */
+enum {
+	LIBETH_XDP_TX_LEN		= GENMASK(15, 0),
+
+	LIBETH_XDP_TX_FIRST		= BIT(16),
+	LIBETH_XDP_TX_LAST		= BIT(17),
+	LIBETH_XDP_TX_MULTI		= BIT(18),
+
+	LIBETH_XDP_TX_FLAGS		= GENMASK(31, 16),
+};
+
+/**
+ * struct libeth_xdp_tx_frame - represents one XDP Tx element
+ * @data: frame start pointer for ``XDP_TX``
+ * @len_fl: ``XDP_TX``, combined flags [31:16] and len [15:0] field for speed
+ * @soff: ``XDP_TX``, offset from @data to the start of &skb_shared_info
+ * @frag: one (non-head) frag for ``XDP_TX``
+ */
+struct libeth_xdp_tx_frame {
+	union {
+		/* ``XDP_TX`` */
+		struct {
+			void				*data;
+			u32				len_fl;
+			u32				soff;
+		};
+
+		/* ``XDP_TX`` frag */
+		skb_frag_t			frag;
+	};
+} __aligned_largest;
+static_assert(offsetof(struct libeth_xdp_tx_frame, frag.len) ==
+	      offsetof(struct libeth_xdp_tx_frame, len_fl));
+
+/**
+ * struct libeth_xdp_tx_bulk - XDP Tx frame bulk for bulk sending
+ * @prog: corresponding active XDP program
+ * @dev: &net_device which the frames are transmitted on
+ * @xdpsq: shortcut to the corresponding driver-specific XDPSQ structure
+ * @count: current number of frames in @bulk
+ * @bulk: array of queued frames for bulk Tx
+ *
+ * All XDP Tx operations queue each frame to the bulk first and flush it
+ * when @count reaches the array end. Bulk is always placed on the stack
+ * for performance. One bulk element contains all the data necessary
+ * for sending a frame and then freeing it on completion.
+ */
+struct libeth_xdp_tx_bulk {
+	const struct bpf_prog		*prog;
+	struct net_device		*dev;
+	void				*xdpsq;
+
+	u32				count;
+	struct libeth_xdp_tx_frame	bulk[LIBETH_XDP_TX_BULK];
+} __aligned(sizeof(struct libeth_xdp_tx_frame));
+
+/**
+ * LIBETH_XDP_ONSTACK_BULK - declare &libeth_xdp_tx_bulk on the stack
+ * @bq: name of the variable to declare
+ *
+ * Helper to declare a bulk on the stack with a compiler hint that it should
+ * not be initialized automatically (with `CONFIG_INIT_STACK_ALL_*`) for
+ * performance reasons.
+ */
+#define LIBETH_XDP_ONSTACK_BULK(bq)					      \
+	struct libeth_xdp_tx_bulk bq __uninitialized
+
+/**
+ * struct libeth_xdpsq - abstraction for an XDPSQ
+ * @sqes: array of Tx buffers from the actual queue struct
+ * @descs: opaque pointer to the HW descriptor array
+ * @ntu: pointer to the next free descriptor index
+ * @count: number of descriptors on that queue
+ * @pending: pointer to the number of sent-not-completed descs on that queue
+ * @xdp_tx: pointer to the above
+ *
+ * Abstraction for driver-independent implementation of Tx. Placed on the stack
+ * and filled by the driver before the transmission, so that the generic
+ * functions can access and modify driver-specific resources.
+ */
+struct libeth_xdpsq {
+	struct libeth_sqe		*sqes;
+	void				*descs;
+
+	u32				*ntu;
+	u32				count;
+
+	u32				*pending;
+	u32				*xdp_tx;
+};
+
+/**
+ * struct libeth_xdp_tx_desc - abstraction for an XDP Tx descriptor
+ * @addr: DMA address of the frame
+ * @len: length of the frame
+ * @flags: XDP Tx flags
+ * @opts: combined @len + @flags for speed
+ *
+ * Filled by the generic functions and then passed to driver-specific functions
+ * to fill a HW Tx descriptor, always placed on the [function] stack.
+ */
+struct libeth_xdp_tx_desc {
+	dma_addr_t			addr;
+	union {
+		struct {
+			u32				len;
+			u32				flags;
+		};
+		aligned_u64			opts;
+	};
+} __aligned_largest;
+
+/**
+ * libeth_xdp_tx_xmit_bulk - main XDP Tx function
+ * @bulk: array of frames to send
+ * @xdpsq: pointer to the driver-specific XDPSQ struct
+ * @n: number of frames to send
+ * @unroll: whether to unroll the queue filling loop for speed
+ * @priv: driver-specific private data
+ * @prep: callback for cleaning the queue and filling abstract &libeth_xdpsq
+ * @fill: internal callback for filling &libeth_sqe and &libeth_xdp_tx_desc
+ * @xmit: callback for filling a HW descriptor with the frame info
+ *
+ * Internal abstraction for placing @n XDP Tx frames on the HW XDPSQ. Used for
+ * all types of frames.
+ * @unroll greatly increases the object code size, but also greatly increases
+ * performance.
+ * The compilers inline all those onstack abstractions to direct data accesses.
+ *
+ * Return: number of frames actually placed on the queue, <= @n. The function
+ * can't fail, but can send less frames if there's no enough free descriptors
+ * available. The actual free space is returned by @prep from the driver.
+ */
+static __always_inline u32
+libeth_xdp_tx_xmit_bulk(const struct libeth_xdp_tx_frame *bulk, void *xdpsq,
+			u32 n, bool unroll, u64 priv,
+			u32 (*prep)(void *xdpsq, struct libeth_xdpsq *sq),
+			struct libeth_xdp_tx_desc
+			(*fill)(struct libeth_xdp_tx_frame frm, u32 i,
+				const struct libeth_xdpsq *sq, u64 priv),
+			void (*xmit)(struct libeth_xdp_tx_desc desc, u32 i,
+				     const struct libeth_xdpsq *sq, u64 priv))
+{
+	struct libeth_xdpsq sq __uninitialized;
+	u32 this, batched, off = 0;
+	u32 ntu, i = 0;
+
+	n = min(n, prep(xdpsq, &sq));
+	if (unlikely(!n))
+		return 0;
+
+	ntu = *sq.ntu;
+
+	this = sq.count - ntu;
+	if (likely(this > n))
+		this = n;
+
+again:
+	if (!unroll)
+		goto linear;
+
+	batched = ALIGN_DOWN(this, LIBETH_XDP_TX_BATCH);
+
+	for ( ; i < off + batched; i += LIBETH_XDP_TX_BATCH) {
+		u32 base = ntu + i - off;
+
+		unrolled_count(LIBETH_XDP_TX_BATCH)
+		for (u32 j = 0; j < LIBETH_XDP_TX_BATCH; j++)
+			xmit(fill(bulk[i + j], base + j, &sq, priv),
+			     base + j, &sq, priv);
+	}
+
+	if (batched < this) {
+linear:
+		for ( ; i < off + this; i++)
+			xmit(fill(bulk[i], ntu + i - off, &sq, priv),
+			     ntu + i - off, &sq, priv);
+	}
+
+	ntu += this;
+	if (likely(ntu < sq.count))
+		goto out;
+
+	ntu = 0;
+
+	if (i < n) {
+		this = n - i;
+		off = i;
+
+		goto again;
+	}
+
+out:
+	*sq.ntu = ntu;
+	*sq.pending += n;
+	if (sq.xdp_tx)
+		*sq.xdp_tx += n;
+
+	return n;
+}
+
+/* ``XDP_TX`` bulking */
+
+void libeth_xdp_return_buff_slow(struct libeth_xdp_buff *xdp);
+
+/**
+ * libeth_xdp_tx_queue_head - internal helper for queueing one ``XDP_TX`` head
+ * @bq: XDP Tx bulk to queue the head frag to
+ * @xdp: XDP buffer with the head to queue
+ *
+ * Return: false if it's the only frag of the frame, true if it's an S/G frame.
+ */
+static inline bool libeth_xdp_tx_queue_head(struct libeth_xdp_tx_bulk *bq,
+					    const struct libeth_xdp_buff *xdp)
+{
+	const struct xdp_buff *base = &xdp->base;
+
+	bq->bulk[bq->count++] = (typeof(*bq->bulk)){
+		.data	= xdp->data,
+		.len_fl	= (base->data_end - xdp->data) | LIBETH_XDP_TX_FIRST,
+		.soff	= xdp_data_hard_end(base) - xdp->data,
+	};
+
+	if (!xdp_buff_has_frags(base))
+		return false;
+
+	bq->bulk[bq->count - 1].len_fl |= LIBETH_XDP_TX_MULTI;
+
+	return true;
+}
+
+/**
+ * libeth_xdp_tx_queue_frag - internal helper for queueing one ``XDP_TX`` frag
+ * @bq: XDP Tx bulk to queue the frag to
+ * @frag: frag to queue
+ */
+static inline void libeth_xdp_tx_queue_frag(struct libeth_xdp_tx_bulk *bq,
+					    const skb_frag_t *frag)
+{
+	bq->bulk[bq->count++].frag = *frag;
+}
+
+/**
+ * libeth_xdp_tx_queue_bulk - internal helper for queueing one ``XDP_TX`` frame
+ * @bq: XDP Tx bulk to queue the frame to
+ * @xdp: XDP buffer to queue
+ * @flush_bulk: driver callback to flush the bulk to the HW queue
+ *
+ * Return: true on success, false on flush error.
+ */
+static __always_inline bool
+libeth_xdp_tx_queue_bulk(struct libeth_xdp_tx_bulk *bq,
+			 struct libeth_xdp_buff *xdp,
+			 bool (*flush_bulk)(struct libeth_xdp_tx_bulk *bq,
+					    u32 flags))
+{
+	const struct skb_shared_info *sinfo;
+	bool ret = true;
+	u32 nr_frags;
+
+	if (unlikely(bq->count == LIBETH_XDP_TX_BULK) &&
+	    unlikely(!flush_bulk(bq, 0))) {
+		libeth_xdp_return_buff_slow(xdp);
+		return false;
+	}
+
+	if (!libeth_xdp_tx_queue_head(bq, xdp))
+		goto out;
+
+	sinfo = xdp_get_shared_info_from_buff(&xdp->base);
+	nr_frags = sinfo->nr_frags;
+
+	for (u32 i = 0; i < nr_frags; i++) {
+		if (unlikely(bq->count == LIBETH_XDP_TX_BULK) &&
+		    unlikely(!flush_bulk(bq, 0))) {
+			ret = false;
+			break;
+		}
+
+		libeth_xdp_tx_queue_frag(bq, &sinfo->frags[i]);
+	}
+
+out:
+	bq->bulk[bq->count - 1].len_fl |= LIBETH_XDP_TX_LAST;
+	xdp->data = NULL;
+
+	return ret;
+}
+
+/**
+ * libeth_xdp_tx_fill_stats - fill &libeth_sqe with ``XDP_TX`` frame stats
+ * @sqe: SQ element to fill
+ * @desc: libeth_xdp Tx descriptor
+ * @sinfo: &skb_shared_info for this frame
+ *
+ * Internal helper for filling an SQE with the frame stats, do not use in
+ * drivers. Fills the number of frags and bytes for this frame.
+ */
+#define libeth_xdp_tx_fill_stats(sqe, desc, sinfo)			      \
+	__libeth_xdp_tx_fill_stats(sqe, desc, sinfo, __UNIQUE_ID(sqe_),	      \
+				   __UNIQUE_ID(desc_), __UNIQUE_ID(sinfo_))
+
+#define __libeth_xdp_tx_fill_stats(sqe, desc, sinfo, ue, ud, us) do {	      \
+	const struct libeth_xdp_tx_desc *ud = (desc);			      \
+	const struct skb_shared_info *us;				      \
+	struct libeth_sqe *ue = (sqe);					      \
+									      \
+	ue->nr_frags = 1;						      \
+	ue->bytes = ud->len;						      \
+									      \
+	if (ud->flags & LIBETH_XDP_TX_MULTI) {				      \
+		us = (sinfo);						      \
+		ue->nr_frags += us->nr_frags;				      \
+		ue->bytes += us->xdp_frags_size;			      \
+	}								      \
+} while (0)
+
+/**
+ * libeth_xdp_tx_fill_buf - internal helper to fill one ``XDP_TX`` &libeth_sqe
+ * @frm: XDP Tx frame from the bulk
+ * @i: index on the HW queue
+ * @sq: XDPSQ abstraction for the queue
+ * @priv: private data
+ *
+ * Return: XDP Tx descriptor with the synced DMA and other info to pass to
+ * the driver callback.
+ */
+static inline struct libeth_xdp_tx_desc
+libeth_xdp_tx_fill_buf(struct libeth_xdp_tx_frame frm, u32 i,
+		       const struct libeth_xdpsq *sq, u64 priv)
+{
+	struct libeth_xdp_tx_desc desc;
+	struct skb_shared_info *sinfo;
+	skb_frag_t *frag = &frm.frag;
+	struct libeth_sqe *sqe;
+	netmem_ref netmem;
+
+	if (frm.len_fl & LIBETH_XDP_TX_FIRST) {
+		sinfo = frm.data + frm.soff;
+		skb_frag_fill_netmem_desc(frag, virt_to_netmem(frm.data),
+					  offset_in_page(frm.data),
+					  frm.len_fl);
+	} else {
+		sinfo = NULL;
+	}
+
+	netmem = skb_frag_netmem(frag);
+	desc = (typeof(desc)){
+		.addr	= page_pool_get_dma_addr_netmem(netmem) +
+			  skb_frag_off(frag),
+		.len	= skb_frag_size(frag) & LIBETH_XDP_TX_LEN,
+		.flags	= skb_frag_size(frag) & LIBETH_XDP_TX_FLAGS,
+	};
+
+	dma_sync_single_for_device(__netmem_get_pp(netmem)->p.dev, desc.addr,
+				   desc.len, DMA_BIDIRECTIONAL);
+
+	if (!sinfo)
+		return desc;
+
+	sqe = &sq->sqes[i];
+	sqe->type = LIBETH_SQE_XDP_TX;
+	sqe->sinfo = sinfo;
+	libeth_xdp_tx_fill_stats(sqe, &desc, sinfo);
+
+	return desc;
+}
+
+void libeth_xdp_tx_exception(struct libeth_xdp_tx_bulk *bq, u32 sent,
+			     u32 flags);
+
+/**
+ * __libeth_xdp_tx_flush_bulk - internal helper to flush one XDP Tx bulk
+ * @bq: bulk to flush
+ * @flags: XDP TX flags
+ * @prep: driver-specific callback to prepare the queue for sending
+ * @fill: libeth_xdp callback to fill &libeth_sqe and &libeth_xdp_tx_desc
+ * @xmit: driver callback to fill a HW descriptor
+ *
+ * Internal abstraction to create bulk flush functions for drivers.
+ *
+ * Return: true if anything was sent, false otherwise.
+ */
+static __always_inline bool
+__libeth_xdp_tx_flush_bulk(struct libeth_xdp_tx_bulk *bq, u32 flags,
+			   u32 (*prep)(void *xdpsq, struct libeth_xdpsq *sq),
+			   struct libeth_xdp_tx_desc
+			   (*fill)(struct libeth_xdp_tx_frame frm, u32 i,
+				   const struct libeth_xdpsq *sq, u64 priv),
+			   void (*xmit)(struct libeth_xdp_tx_desc desc, u32 i,
+					const struct libeth_xdpsq *sq,
+					u64 priv))
+{
+	u32 sent, drops;
+	int err = 0;
+
+	sent = libeth_xdp_tx_xmit_bulk(bq->bulk, bq->xdpsq,
+				       min(bq->count, LIBETH_XDP_TX_BULK),
+				       false, 0, prep, fill, xmit);
+	drops = bq->count - sent;
+
+	if (unlikely(drops)) {
+		libeth_xdp_tx_exception(bq, sent, flags);
+		err = -ENXIO;
+	} else {
+		bq->count = 0;
+	}
+
+	trace_xdp_bulk_tx(bq->dev, sent, drops, err);
+
+	return likely(sent);
+}
+
+/**
+ * libeth_xdp_tx_flush_bulk - wrapper to define flush of one ``XDP_TX`` bulk
+ * @bq: bulk to flush
+ * @flags: Tx flags, see above
+ * @prep: driver callback to prepare the queue
+ * @xmit: driver callback to fill a HW descriptor
+ */
+#define libeth_xdp_tx_flush_bulk(bq, flags, prep, xmit)			      \
+	__libeth_xdp_tx_flush_bulk(bq, flags, prep, libeth_xdp_tx_fill_buf,   \
+				   xmit)
+
+/* Rx polling path */
+
+static inline void libeth_xdp_return_va(const void *data, bool napi)
+{
+	netmem_ref netmem = virt_to_netmem(data);
+
+	page_pool_put_full_netmem(__netmem_get_pp(netmem), netmem, napi);
+}
+
+static inline void libeth_xdp_return_frags(const struct skb_shared_info *sinfo,
+					   bool napi)
+{
+	for (u32 i = 0; i < sinfo->nr_frags; i++) {
+		netmem_ref netmem = skb_frag_netmem(&sinfo->frags[i]);
+
+		page_pool_put_full_netmem(netmem_get_pp(netmem), netmem, napi);
+	}
+}
+
+/**
+ * libeth_xdp_return_buff - free/recycle &libeth_xdp_buff
+ * @xdp: buffer to free
+ *
+ * Hotpath helper to free &libeth_xdp_buff. Comparing to xdp_return_buff(),
+ * it's faster as it gets inlined and always assumes order-0 pages and safe
+ * direct recycling. Zeroes @xdp->data to avoid UAFs.
+ */
+#define libeth_xdp_return_buff(xdp)	__libeth_xdp_return_buff(xdp, true)
+
+static inline void __libeth_xdp_return_buff(struct libeth_xdp_buff *xdp,
+					    bool napi)
+{
+	if (!xdp_buff_has_frags(&xdp->base))
+		goto out;
+
+	libeth_xdp_return_frags(xdp_get_shared_info_from_buff(&xdp->base),
+				napi);
+
+out:
+	libeth_xdp_return_va(xdp->data, napi);
+	xdp->data = NULL;
+}
+
+#endif /* __LIBETH_XDP_H */
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
new file mode 100644
index 000000000000..444449c72221
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2025 Intel Corporation */
+
+#define DEFAULT_SYMBOL_NAMESPACE	"LIBETH_XDP"
+
+#include <linux/export.h>
+
+#include <net/libeth/xdp.h>
+
+/* ``XDP_TX`` bulking */
+
+static void __cold
+libeth_xdp_tx_return_one(const struct libeth_xdp_tx_frame *frm)
+{
+	if (frm->len_fl & LIBETH_XDP_TX_MULTI)
+		libeth_xdp_return_frags(frm->data + frm->soff, true);
+
+	libeth_xdp_return_va(frm->data, true);
+}
+
+static void __cold
+libeth_xdp_tx_return_bulk(const struct libeth_xdp_tx_frame *bq, u32 count)
+{
+	for (u32 i = 0; i < count; i++) {
+		const struct libeth_xdp_tx_frame *frm = &bq[i];
+
+		if (!(frm->len_fl & LIBETH_XDP_TX_FIRST))
+			continue;
+
+		libeth_xdp_tx_return_one(frm);
+	}
+}
+
+static void __cold libeth_trace_xdp_exception(const struct net_device *dev,
+					      const struct bpf_prog *prog,
+					      u32 act)
+{
+	trace_xdp_exception(dev, prog, act);
+}
+
+/**
+ * libeth_xdp_tx_exception - handle Tx exceptions of XDP frames
+ * @bq: XDP Tx frame bulk
+ * @sent: number of frames sent successfully (from this bulk)
+ * @flags: internal libeth_xdp flags
+ *
+ * Cold helper used by __libeth_xdp_tx_flush_bulk(), do not call directly.
+ * Reports XDP Tx exceptions, frees the frames that won't be sent or adjust
+ * the Tx bulk to try again later.
+ */
+void __cold libeth_xdp_tx_exception(struct libeth_xdp_tx_bulk *bq, u32 sent,
+				    u32 flags)
+{
+	const struct libeth_xdp_tx_frame *pos = &bq->bulk[sent];
+	u32 left = bq->count - sent;
+
+	libeth_trace_xdp_exception(bq->dev, bq->prog, XDP_TX);
+
+	if (!(flags & LIBETH_XDP_TX_DROP)) {
+		memmove(bq->bulk, pos, left * sizeof(*bq->bulk));
+		bq->count = left;
+
+		return;
+	}
+
+	libeth_xdp_tx_return_bulk(pos, left);
+
+	bq->count = 0;
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_tx_exception);
+
+/* Rx polling path */
+
+/**
+ * libeth_xdp_return_buff_slow - free &libeth_xdp_buff
+ * @xdp: buffer to free/return
+ *
+ * Slowpath version of libeth_xdp_return_buff() to be called on exceptions,
+ * queue clean-ups etc., without unwanted inlining.
+ */
+void __cold libeth_xdp_return_buff_slow(struct libeth_xdp_buff *xdp)
+{
+	__libeth_xdp_return_buff(xdp, false);
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_return_buff_slow);
+
+MODULE_DESCRIPTION("Common Ethernet library - XDP infra");
+MODULE_IMPORT_NS("LIBETH");
+MODULE_LICENSE("GPL");
-- 
2.49.0

