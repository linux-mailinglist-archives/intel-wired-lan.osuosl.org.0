Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4817949078
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E9E240A39;
	Tue,  6 Aug 2024 13:13:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vQC9ZDmqRhC0; Tue,  6 Aug 2024 13:13:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61F3340A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722950003;
	bh=psoDfpiqAikcM/2cUfqwEuiCF79WLM5b7QtUgCw9v3I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nc9Jh8pijSSVVw8qJJGdlO6XSMfS8yKUAmtgxX1GuHk8/ohzLP12WjTsk324RkzN3
	 GE/qNPo7f5sEgCLDVTW8/kE5ikfsd/wzbUz0Vg8PXSyAkgnGJD8PcbAfX4RTOYMvHB
	 aqnR6dmZ2gJBIuJEqxphHgDSO4YGfWS+7Tva3cELP3JJHz/COcdYFrp9HES5TRdr3B
	 DMihzKVMNfh9T4pazXWQ5JsWmtYS3M4U2foZuGRa2I6x0LbfN1KJqbuT0laou+Ccp0
	 Mwgl73DgvJXgNfA2Si+8+kjPDdKJwapeR71gO77aoM5Wjy+9fZ0xggWFlKhtIWiWmZ
	 FAnjbvth5DsDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61F3340A43;
	Tue,  6 Aug 2024 13:13:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B6C61BF969
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89066403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cULRlVXyGyaT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0AA8440201
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AA8440201
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0AA8440201
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:13 +0000 (UTC)
X-CSE-ConnectionGUID: AyxDFd+dTjy8OQj4eKrHrw==
X-CSE-MsgGUID: LDddTMudRJWgir7k3bh6Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842089"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842089"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:13 -0700
X-CSE-ConnectionGUID: oPRohnbhS96BmrZxmLGHwQ==
X-CSE-MsgGUID: ICbH5ZXxRfKlYcaWn1+/8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475801"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:10 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:33 +0200
Message-ID: <20240806131240.800259-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806131240.800259-1-aleksander.lobakin@intel.com>
References: <20240806131240.800259-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722949994; x=1754485994;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1nYBDZNzvE1/YJ4t6OXW9/DNn6Y40xaPjov3MG+CL/U=;
 b=My0pwNPdV1Ojpj5vs6Z65dYVS8+9Zx2YL+/0ZoQcLmteBdm4LvRC/pPr
 nyg2sOeiABuV0+8tLl2vJRAh4hToiUqYOOjKJFDRjtnUL8UtX8SAY6Xf7
 N0qzvOiiRTn1UmvYuzt0N5WV6+DpYHtGodFHsMltDgNtT6gpK2fME/heR
 GSZbdh7ijHJE+S/AR3Wws7m3E7OWyzWlP+VInCQ09uRT7RrEq93gkVV+c
 O3vi2BYjYwVw+qIvkNAkZBKnIXAsDNprba+khuKos3f+8w/qMsy77tHyg
 GdEmAksAmM4rjfuQfH6SriINSoun8jnPwP+Pkps5C4KG8bBN0ufgJ70Cd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=My0pwNPd
Subject: [Intel-wired-lan] [PATCH iwl-next 2/9] libeth: add common queue
 stats
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

Define common structures, inline helpers and Ethtool helpers to collect,
update and export the statistics (RQ, SQ, XDPSQ). Use u64_stats_t right
from the start, as well as the corresponding helpers to ensure
tear-free operations.
For the NAPI parts of both Rx and Tx, also define small onstack
containers to update them in polling loops and then sync the actual
containers once a loop ends.
In order to implement fully generic Netlink per-queue stats callbacks,
&libeth_netdev_priv is introduced and is required to be embedded at the
start of the driver's netdev_priv structure.

Note on the stats types:
* onstack stats are u32 and are local to one NAPI loop or sending
  function. At the end of processing, they get added to the "live"
  stats below;
* "live" stats are u64_stats_t and they reflect the current session
  (interface up) only (Netlink queue stats). When an ifdown occurs,
  they get added to the "base" stats below;
* "base" stats are u64 guarded by a mutex, they survive ifdowns and
  don't get updated when the interface is up. This corresponds to
  the Netlink base stats.

Drivers are responsible for filling the onstack stats and calling
stack -> live update functions; base stats are internal to libeth.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libeth/Makefile |   4 +-
 include/net/libeth/types.h                 | 247 ++++++++++++++
 drivers/net/ethernet/intel/libeth/priv.h   |  21 ++
 include/net/libeth/netdev.h                |  31 ++
 include/net/libeth/stats.h                 | 141 ++++++++
 drivers/net/ethernet/intel/libeth/netdev.c | 157 +++++++++
 drivers/net/ethernet/intel/libeth/rx.c     |   5 -
 drivers/net/ethernet/intel/libeth/stats.c  | 360 +++++++++++++++++++++
 8 files changed, 960 insertions(+), 6 deletions(-)
 create mode 100644 include/net/libeth/types.h
 create mode 100644 drivers/net/ethernet/intel/libeth/priv.h
 create mode 100644 include/net/libeth/netdev.h
 create mode 100644 include/net/libeth/stats.h
 create mode 100644 drivers/net/ethernet/intel/libeth/netdev.c
 create mode 100644 drivers/net/ethernet/intel/libeth/stats.c

diff --git a/drivers/net/ethernet/intel/libeth/Makefile b/drivers/net/ethernet/intel/libeth/Makefile
index 52492b081132..b30a2804554f 100644
--- a/drivers/net/ethernet/intel/libeth/Makefile
+++ b/drivers/net/ethernet/intel/libeth/Makefile
@@ -3,4 +3,6 @@
 
 obj-$(CONFIG_LIBETH)		+= libeth.o
 
-libeth-y			:= rx.o
+libeth-y			+= netdev.o
+libeth-y			+= rx.o
+libeth-y			+= stats.o
diff --git a/include/net/libeth/types.h b/include/net/libeth/types.h
new file mode 100644
index 000000000000..d7adc637408b
--- /dev/null
+++ b/include/net/libeth/types.h
@@ -0,0 +1,247 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_TYPES_H
+#define __LIBETH_TYPES_H
+
+#include <linux/u64_stats_sync.h>
+
+/**
+ * struct libeth_netdev_priv - libeth netdev private structure
+ * @curr_xdpsqs: current number of XDPSQs in use
+ * @max_xdpsqs: maximum number of XDPSQs this netdev has
+ * @last_rqs: number of RQs last time Ethtool stats were requested
+ * @last_sqs: number of SQs last time Ethtool stats were requested
+ * @last_xdpsqs: number of XDPSQ last time Ethtool stats were requested
+ * @base_rqs: per-queue RQ stats containers with the netdev lifetime
+ * @base_sqs: per-queue SQ stats containers with the netdev lifetime
+ * @base_xdpsqs: per-queue XDPSQ stats containers with the netdev lifetime
+ * @live_rqs: pointers to the current driver's embedded RQ stats
+ * @live_sqs: pointers to the current driver's embedded SQ stats
+ * @live_xdpsqs: pointers to the current driver's embedded XDPSQ stats
+ *
+ * The structure must be placed strictly at the beginning of driver's netdev
+ * private structure if it uses libeth generic stats, as libeth uses
+ * netdev_priv() to access it. The structure is private to libeth and
+ * shouldn't be accessed from drivers directly.
+ */
+struct libeth_netdev_priv {
+	u32				curr_xdpsqs;
+	u32				max_xdpsqs;
+
+	u16				last_rqs;
+	u16				last_sqs;
+	u16				last_xdpsqs;
+
+	struct libeth_rq_base_stats	*base_rqs;
+	struct libeth_sq_base_stats	*base_sqs;
+	struct libeth_xdpsq_base_stats	*base_xdpsqs;
+
+	const struct libeth_rq_stats	**live_rqs;
+	const struct libeth_sq_stats	**live_sqs;
+	const struct libeth_xdpsq_stats	**live_xdpsqs;
+
+	/* Driver private data, ____cacheline_aligned */
+} ____cacheline_aligned;
+
+/**
+ * libeth_netdev_priv_assert - assert the layout of driver's netdev priv struct
+ * @t: typeof() of driver's netdev private structure
+ * @f: name of the embedded &libeth_netdev_priv inside @t
+ *
+ * Make sure &libeth_netdev_priv is placed strictly at the beginning of
+ * driver's private structure, so that libeth can use netdev_priv() to
+ * access it.
+ * To be called right after driver's netdev private struct declaration.
+ */
+#define libeth_netdev_priv_assert(t, f)					    \
+	static_assert(__same_type(struct libeth_netdev_priv,		    \
+				  typeof_member(t, f)) && !offsetof(t, f))
+
+/* Stats. '[NL]' means it's exported to the Netlink per-queue stats */
+
+/* Use 32-byte alignment to reduce false sharing. The first ~4 fields usually
+ * are the hottest and the stats update helpers are unrolled by this count.
+ */
+#define __libeth_stats_aligned						    \
+	__aligned(__cmp(min, 4 * sizeof(u64_stats_t), SMP_CACHE_BYTES))
+
+/* Align queue stats counters naturally in case they aren't */
+#define __libeth_u64_stats_t						    \
+	u64_stats_t __aligned(sizeof(u64_stats_t))
+
+#define ___live(s)			__libeth_u64_stats_t	s;
+
+/* Rx per-queue stats:
+ *
+ * napi: "hot" counters, updated in bulks from NAPI polling loops:
+ * bytes: bytes received on this queue [NL]
+ * packets: packets received on this queue [NL]
+ * fragments: number of processed descriptors carrying only a fragment
+ * csum_unnecessary: number of frames the device checked the checksum for [NL]
+ * hsplit: number of frames the device performed the header split for
+ * hsplit_linear: number of frames placed entirely to the header buffer
+ * hw_gro_packets: number of frames the device did HW GRO for [NL]
+ * hw_gro_bytes: bytes for all HW GROed frames [NL]
+ *
+ * fail: "slow"/error counters, incremented by one when occurred:
+ * alloc_fail: number of FQE (Rx buffer) allocation fails [NL]
+ * dma_errs: number of hardware Rx DMA errors
+ * csum_none: number of frames the device didn't check the checksum for [NL]
+ * csum_bad: number of frames with invalid checksum [NL]
+ * hsplit_errs: number of header split errors (header buffer overflows etc.)
+ * build_fail: number of napi_build_skb() fails
+ *
+ * &libeth_rq_stats must be embedded into the corresponding queue structure.
+ */
+
+#define LIBETH_DECLARE_RQ_NAPI_STATS(act)				    \
+	act(bytes)							    \
+	act(packets)							    \
+	act(fragments)							    \
+	act(csum_unnecessary)						    \
+	act(hsplit)							    \
+	act(hsplit_linear)						    \
+	act(hw_gro_packets)						    \
+	act(hw_gro_bytes)
+
+#define LIBETH_DECLARE_RQ_FAIL_STATS(act)				    \
+	act(alloc_fail)							    \
+	act(dma_errs)							    \
+	act(csum_none)							    \
+	act(csum_bad)							    \
+	act(hsplit_errs)						    \
+	act(build_fail)
+
+#define LIBETH_DECLARE_RQ_STATS(act)					    \
+	LIBETH_DECLARE_RQ_NAPI_STATS(act)				    \
+	LIBETH_DECLARE_RQ_FAIL_STATS(act)
+
+struct libeth_rq_stats {
+	struct u64_stats_sync		syncp;
+
+	union {
+		struct {
+			struct_group(napi,
+				LIBETH_DECLARE_RQ_NAPI_STATS(___live);
+			);
+			LIBETH_DECLARE_RQ_FAIL_STATS(___live);
+		};
+		DECLARE_FLEX_ARRAY(__libeth_u64_stats_t, raw);
+	};
+} __libeth_stats_aligned;
+
+/* Tx per-queue stats:
+ *
+ * napi: "hot" counters, updated in bulks from NAPI polling loops:
+ * bytes: bytes sent from this queue [NL]
+ * packets: packets sent from this queue [NL]
+ *
+ * xmit: "hot" counters, updated in bulks from ::ndo_start_xmit():
+ * fragments: number of descriptors carrying only a fragment
+ * csum_none: number of frames sent w/o checksum offload [NL]
+ * needs_csum: number of frames sent with checksum offload [NL]
+ * hw_gso_packets: number of frames sent with segmentation offload [NL]
+ * tso: number of frames sent with TCP segmentation offload
+ * uso: number of frames sent with UDP L4 segmentation offload
+ * hw_gso_bytes: total bytes for HW GSOed frames [NL]
+ *
+ * fail: "slow"/error counters, incremented by one when occurred:
+ * linearized: number of non-linear skbs linearized due to HW limits
+ * dma_map_errs: number of DMA mapping errors
+ * drops: number of skbs dropped by ::ndo_start_xmit()
+ * busy: number of xmit failures due to the queue being full
+ * stop: number of times the queue was stopped by the driver [NL]
+ * wake: number of times the queue was started after being stopped [NL]
+ *
+ * &libeth_sq_stats must be embedded into the corresponding queue structure.
+ */
+
+#define LIBETH_DECLARE_SQ_NAPI_STATS(act)				    \
+	act(bytes)							    \
+	act(packets)
+
+#define LIBETH_DECLARE_SQ_XMIT_STATS(act)				    \
+	act(fragments)							    \
+	act(csum_none)							    \
+	act(needs_csum)							    \
+	act(hw_gso_packets)						    \
+	act(tso)							    \
+	act(uso)							    \
+	act(hw_gso_bytes)
+
+#define LIBETH_DECLARE_SQ_FAIL_STATS(act)				    \
+	act(linearized)							    \
+	act(dma_map_errs)						    \
+	act(drops)							    \
+	act(busy)							    \
+	act(stop)							    \
+	act(wake)
+
+#define LIBETH_DECLARE_SQ_STATS(act)					    \
+	LIBETH_DECLARE_SQ_NAPI_STATS(act)				    \
+	LIBETH_DECLARE_SQ_XMIT_STATS(act)				    \
+	LIBETH_DECLARE_SQ_FAIL_STATS(act)
+
+struct libeth_sq_stats {
+	struct u64_stats_sync		syncp;
+
+	union {
+		struct {
+			struct_group(napi,
+				LIBETH_DECLARE_SQ_NAPI_STATS(___live);
+			);
+			struct_group(xmit,
+				LIBETH_DECLARE_SQ_XMIT_STATS(___live);
+			);
+			LIBETH_DECLARE_SQ_FAIL_STATS(___live);
+		};
+		DECLARE_FLEX_ARRAY(__libeth_u64_stats_t, raw);
+	};
+} __libeth_stats_aligned;
+
+/* XDP Tx per-queue stats:
+ *
+ * napi: "hot" counters, updated in bulks from NAPI polling loops:
+ * bytes: bytes sent from this queue
+ * packets: packets sent from this queue
+ * fragments: number of descriptors carrying only a fragment
+ *
+ * fail: "slow"/error counters, incremented by one when occurred:
+ * dma_map_errs: number of DMA mapping errors
+ * drops: number of frags dropped due to the queue being full
+ * busy: number of xmit failures due to the queue being full
+ *
+ * &libeth_xdpsq_stats must be embedded into the corresponding queue structure.
+ */
+
+#define LIBETH_DECLARE_XDPSQ_NAPI_STATS(act)				    \
+	LIBETH_DECLARE_SQ_NAPI_STATS(act)				    \
+	act(fragments)
+
+#define LIBETH_DECLARE_XDPSQ_FAIL_STATS(act)				    \
+	act(dma_map_errs)						    \
+	act(drops)							    \
+	act(busy)
+
+#define LIBETH_DECLARE_XDPSQ_STATS(act)					    \
+	LIBETH_DECLARE_XDPSQ_NAPI_STATS(act)				    \
+	LIBETH_DECLARE_XDPSQ_FAIL_STATS(act)
+
+struct libeth_xdpsq_stats {
+	struct u64_stats_sync		syncp;
+
+	union {
+		struct {
+			struct_group(napi,
+				LIBETH_DECLARE_XDPSQ_NAPI_STATS(___live);
+			);
+			LIBETH_DECLARE_XDPSQ_FAIL_STATS(___live);
+		};
+		DECLARE_FLEX_ARRAY(__libeth_u64_stats_t, raw);
+	};
+} __libeth_stats_aligned;
+
+#undef ___live
+
+#endif /* __LIBETH_TYPES_H */
diff --git a/drivers/net/ethernet/intel/libeth/priv.h b/drivers/net/ethernet/intel/libeth/priv.h
new file mode 100644
index 000000000000..6455aab0311c
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/priv.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_PRIV_H
+#define __LIBETH_PRIV_H
+
+#include <linux/types.h>
+
+/* Stats */
+
+struct net_device;
+
+bool libeth_stats_init_priv(struct net_device *dev, u32 rqs, u32 sqs,
+			    u32 xdpsqs);
+void libeth_stats_free_priv(const struct net_device *dev);
+
+int libeth_stats_get_sset_count(struct net_device *dev);
+void libeth_stats_get_strings(struct net_device *dev, u8 *data);
+void libeth_stats_get_data(struct net_device *dev, u64 *data);
+
+#endif /* __LIBETH_PRIV_H */
diff --git a/include/net/libeth/netdev.h b/include/net/libeth/netdev.h
new file mode 100644
index 000000000000..22a07f0b16d7
--- /dev/null
+++ b/include/net/libeth/netdev.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_NETDEV_H
+#define __LIBETH_NETDEV_H
+
+#include <linux/types.h>
+
+struct ethtool_stats;
+
+struct net_device *__libeth_netdev_alloc(u32 priv, u32 rqs, u32 sqs,
+					 u32 xdpsqs);
+void libeth_netdev_free(struct net_device *dev);
+
+int __libeth_set_real_num_queues(struct net_device *dev, u32 rqs, u32 sqs,
+				 u32 xdpsqs);
+
+#define libeth_netdev_alloc(priv, rqs, sqs, ...)			\
+	__libeth_netdev_alloc(priv, rqs, sqs, (__VA_ARGS__ + 0))
+#define libeth_set_real_num_queues(dev, rqs, sqs, ...)			\
+	__libeth_set_real_num_queues(dev, rqs, sqs, (__VA_ARGS__ + 0))
+
+/* Ethtool */
+
+int libeth_ethtool_get_sset_count(struct net_device *dev, int sset);
+void libeth_ethtool_get_strings(struct net_device *dev, u32 sset, u8 *data);
+void libeth_ethtool_get_stats(struct net_device *dev,
+			      struct ethtool_stats *stats,
+			      u64 *data);
+
+#endif /* __LIBETH_NETDEV_H */
diff --git a/include/net/libeth/stats.h b/include/net/libeth/stats.h
new file mode 100644
index 000000000000..fe7fed543d33
--- /dev/null
+++ b/include/net/libeth/stats.h
@@ -0,0 +1,141 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_STATS_H
+#define __LIBETH_STATS_H
+
+#include <linux/skbuff.h>
+#include <linux/unroll.h>
+
+#include <net/libeth/types.h>
+
+/* Common */
+
+/**
+ * libeth_stats_inc_one - safely increment one stats structure counter
+ * @s: queue stats structure to update (&libeth_rq_stats etc.)
+ * @f: name of the field to increment
+ *
+ * To be used on exception or slow paths -- allocation fails, queue stops etc.
+ */
+#define libeth_stats_inc_one(s, f)					      \
+	__libeth_stats_inc_one(s, f, __UNIQUE_ID(qs_))
+#define __libeth_stats_inc_one(s, f, n) do {				      \
+	typeof(*(s)) *n = (s);						      \
+									      \
+	u64_stats_update_begin(&n->syncp);				      \
+	u64_stats_inc(&n->f);						      \
+	u64_stats_update_end(&n->syncp);				      \
+} while (0)
+
+/**
+ * libeth_stats_add_frags - update the frags counter if needed
+ * @s: onstack stats structure to update (&libeth_rq_napi_stats etc.)
+ * @frags: number of frags processed
+ *
+ * Update the frags counter if @frags > 1, do nothing for non-SG frames.
+ */
+#define libeth_stats_add_frags(s, frags)				      \
+	__libeth_stats_add_frags(s, frags, __UNIQUE_ID(frags_))
+#define __libeth_stats_add_frags(s, frags, uf) do {			      \
+	u32 uf = (frags);						      \
+									      \
+	if (uf > 1)							      \
+		(s)->fragments += uf;					      \
+} while (0)
+
+#define ___libeth_stats_add(qs, ss, group, uq, us, ur) do {		      \
+	typeof(*(qs)) *uq = (qs);					      \
+	u64_stats_t *ur = (typeof(ur))&uq->group;			      \
+	typeof(*(ss)) *us = (ss);					      \
+									      \
+	static_assert(sizeof(uq->group) == sizeof(*us) * 2);		      \
+	u64_stats_update_begin(&uq->syncp);				      \
+									      \
+	unrolled_count(__alignof(*uq) / sizeof(*uq->raw))		      \
+	for (u32 i = 0; i < sizeof(*us) / sizeof(*us->raw); i++)	      \
+		u64_stats_add(&ur[i], us->raw[i]);			      \
+									      \
+	u64_stats_update_end(&uq->syncp);				      \
+} while (0)
+#define __libeth_stats_add(qs, ss, group)				      \
+	___libeth_stats_add(qs, ss, group, __UNIQUE_ID(qs_),		      \
+			    __UNIQUE_ID(ss_), __UNIQUE_ID(raw_))
+
+/* The following barely readable compression block defines the following
+ * entities to be used in drivers:
+ *
+ * &libeth_rq_napi_stats - onstack stats container for RQ NAPI polling
+ * libeth_rq_napi_stats_add() - add RQ onstack stats to the queue container
+ * &libeth_sq_napi_stats - onstack stats container for SQ completion polling
+ * libeth_sq_napi_stats_add() - add SQ onstack stats to the queue container
+ * &libeth_sq_xmit_stats - onstack stats container for ::ndo_start_xmit()
+ * libeth_sq_xmit_stats_add() - add SQ xmit stats to the queue container
+ * &libeth_xdpsq_napi_stats - onstack stats container for XDPSQ polling
+ * libeth_xdpsq_napi_stats_add() - add XDPSQ stats to the queue container
+ *
+ * During the NAPI poll loop or any other hot function, the "hot" counters
+ * get updated on the stack only. Then at the end, the corresponding _add()
+ * is called to quickly add them to the stats container embedded into the
+ * queue structure using __libeth_stats_add().
+ * The onstack counters are of type u32, thus it is assumed that one
+ * polling/sending cycle can't go above ``U32_MAX`` for any of them.
+ */
+
+#define ___stack(s)		u32	s;
+
+#define LIBETH_STATS_DEFINE_STACK(pfx, PFX, type, TYPE)			      \
+struct libeth_##pfx##_##type##_stats {					      \
+	union {								      \
+		struct {						      \
+			LIBETH_DECLARE_##PFX##_##TYPE##_STATS(___stack);      \
+		};							      \
+		DECLARE_FLEX_ARRAY(u32, raw);				      \
+	};								      \
+};									      \
+									      \
+static inline void							      \
+libeth_##pfx##_##type##_stats_add(struct libeth_##pfx##_stats *qs,	      \
+				  const struct libeth_##pfx##_##type##_stats  \
+				  *ss)					      \
+{									      \
+	__libeth_stats_add(qs, ss, type);				      \
+}
+
+#define LIBETH_STATS_DECLARE_HELPERS(pfx)				      \
+void libeth_##pfx##_stats_init(const struct net_device *dev,		      \
+			       struct libeth_##pfx##_stats *stats,	      \
+			       u32 qid);				      \
+void libeth_##pfx##_stats_deinit(const struct net_device *dev, u32 qid)
+
+LIBETH_STATS_DEFINE_STACK(rq, RQ, napi, NAPI);
+LIBETH_STATS_DECLARE_HELPERS(rq);
+
+LIBETH_STATS_DEFINE_STACK(sq, SQ, napi, NAPI);
+LIBETH_STATS_DEFINE_STACK(sq, SQ, xmit, XMIT);
+
+/**
+ * libeth_sq_xmit_stats_csum - convert skb csum status to the SQ xmit stats
+ * @ss: onstack SQ xmit stats to increment
+ * @skb: &sk_buff to process stats for
+ *
+ * To be called from ::ndo_start_xmit() to account whether checksum offload
+ * was enabled when sending this @skb.
+ */
+static inline void libeth_sq_xmit_stats_csum(struct libeth_sq_xmit_stats *ss,
+					     const struct sk_buff *skb)
+{
+	if (skb->ip_summed == CHECKSUM_PARTIAL)
+		ss->needs_csum++;
+	else
+		ss->csum_none++;
+}
+
+LIBETH_STATS_DECLARE_HELPERS(sq);
+
+LIBETH_STATS_DEFINE_STACK(xdpsq, XDPSQ, napi, NAPI);
+LIBETH_STATS_DECLARE_HELPERS(xdpsq);
+
+#undef ___stack
+
+#endif /* __LIBETH_STATS_H */
diff --git a/drivers/net/ethernet/intel/libeth/netdev.c b/drivers/net/ethernet/intel/libeth/netdev.c
new file mode 100644
index 000000000000..6115472b3bb6
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/netdev.c
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2024 Intel Corporation */
+
+#include <linux/etherdevice.h>
+#include <linux/ethtool.h>
+
+#include <net/libeth/netdev.h>
+#include <net/libeth/types.h>
+
+#include "priv.h"
+
+/**
+ * __libeth_netdev_alloc - allocate a &net_device with libeth generic stats
+ * @priv: sizeof() of the private structure with embedded &libeth_netdev_priv
+ * @rqs: maximum number of Rx queues to be used
+ * @sqs: maximum number of Tx queues to be used
+ * @xdpsqs: maximum number of XDP Tx queues to be used
+ *
+ * Allocates a new &net_device and initializes the embedded &libeth_netdev_priv
+ * and the libeth generic stats for it.
+ * Use the non-underscored wrapper in drivers instead.
+ *
+ * Return: new &net_device on success, %NULL on error.
+ */
+struct net_device *__libeth_netdev_alloc(u32 priv, u32 rqs, u32 sqs,
+					 u32 xdpsqs)
+{
+	struct net_device *dev;
+
+	dev = alloc_etherdev_mqs(priv, sqs, rqs);
+	if (!dev)
+		return NULL;
+
+	if (!libeth_stats_init_priv(dev, rqs, sqs, xdpsqs))
+		goto err_netdev;
+
+	return dev;
+
+err_netdev:
+	free_netdev(dev);
+
+	return NULL;
+}
+EXPORT_SYMBOL_NS_GPL(__libeth_netdev_alloc, LIBETH);
+
+/**
+ * libeth_netdev_free - free a &net_device with libeth generic stats
+ * @dev: &net_device to free
+ *
+ * Deinitializes and frees the embedded &libeth_netdev_priv and the netdev
+ * itself, to be used if @dev was allocated using libeth_netdev_alloc().
+ */
+void libeth_netdev_free(struct net_device *dev)
+{
+	libeth_stats_free_priv(dev);
+	free_netdev(dev);
+}
+EXPORT_SYMBOL_NS_GPL(libeth_netdev_free, LIBETH);
+
+/**
+ * __libeth_set_real_num_queues - set the actual number of queues in use
+ * @dev: &net_device to configure
+ * @rqs: actual number of Rx queues
+ * @sqs: actual number of Tx queues
+ * @xdpsqs: actual number of XDP Tx queues
+ *
+ * Sets the actual number of queues in use, to be called on ifup for netdevs
+ * allocated via libeth_netdev_alloc().
+ * Use the non-underscored wrapper in drivers instead.
+ *
+ * Return: %0 on success, -errno on error.
+ */
+int __libeth_set_real_num_queues(struct net_device *dev, u32 rqs, u32 sqs,
+				 u32 xdpsqs)
+{
+	struct libeth_netdev_priv *priv = netdev_priv(dev);
+	int ret;
+
+	ret = netif_set_real_num_rx_queues(dev, rqs);
+	if (ret)
+		return ret;
+
+	ret = netif_set_real_num_tx_queues(dev, sqs);
+	if (ret)
+		return ret;
+
+	priv->curr_xdpsqs = xdpsqs;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(__libeth_set_real_num_queues, LIBETH);
+
+/* Ethtool */
+
+/**
+ * libeth_ethtool_get_sset_count - get the number of libeth generic stats
+ * @dev: libeth-driven &net_device
+ * @sset: ``ETH_SS_STATS`` only, for compatibility with Ethtool callbacks
+ *
+ * Can be used directly in &ethtool_ops if the driver doesn't have HW-specific
+ * stats or called from the corresponding driver callback.
+ *
+ * Return: the number of stats/stringsets.
+ */
+int libeth_ethtool_get_sset_count(struct net_device *dev, int sset)
+{
+	if (sset != ETH_SS_STATS)
+		return 0;
+
+	return libeth_stats_get_sset_count(dev);
+}
+EXPORT_SYMBOL_NS_GPL(libeth_ethtool_get_sset_count, LIBETH);
+
+/**
+ * libeth_ethtool_get_strings - get libeth generic stats strings/names
+ * @dev: libeth-driven &net_device
+ * @sset: ``ETH_SS_STATS`` only, for compatibility with Ethtool callbacks
+ * @data: container to fill with the stats names
+ *
+ * Can be used directly in &ethtool_ops if the driver doesn't have HW-specific
+ * stats or called from the corresponding driver callback.
+ * Note that the function doesn't advance the @data pointer, so it's better to
+ * call it at the end to avoid code complication.
+ */
+void libeth_ethtool_get_strings(struct net_device *dev, u32 sset, u8 *data)
+{
+	if (sset != ETH_SS_STATS)
+		return;
+
+	libeth_stats_get_strings(dev, data);
+}
+EXPORT_SYMBOL_NS_GPL(libeth_ethtool_get_strings, LIBETH);
+
+/**
+ * libeth_ethtool_get_stats - get libeth generic stats counters
+ * @dev: libeth-driven &net_device
+ * @stats: unused, for compatibility with Ethtool callbacks
+ * @data: container to fill with the stats counters
+ *
+ * Can be used directly in &ethtool_ops if the driver doesn't have HW-specific
+ * stats or called from the corresponding driver callback.
+ * Note that the function doesn't advance the @data pointer, so it's better to
+ * call it at the end to avoid code complication. Anyhow, the order must be the
+ * same as in the ::get_strings() implementation.
+ */
+void libeth_ethtool_get_stats(struct net_device *dev,
+			      struct ethtool_stats *stats,
+			      u64 *data)
+{
+	libeth_stats_get_data(dev, data);
+}
+EXPORT_SYMBOL_NS_GPL(libeth_ethtool_get_stats, LIBETH);
+
+/* Module */
+
+MODULE_DESCRIPTION("Common Ethernet library");
+MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index f20926669318..d31779bbfccd 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -252,8 +252,3 @@ void libeth_rx_pt_gen_hash_type(struct libeth_rx_pt *pt)
 	pt->hash_type |= libeth_rx_pt_xdp_pl[pt->payload_layer];
 }
 EXPORT_SYMBOL_NS_GPL(libeth_rx_pt_gen_hash_type, LIBETH);
-
-/* Module */
-
-MODULE_DESCRIPTION("Common Ethernet library");
-MODULE_LICENSE("GPL");
diff --git a/drivers/net/ethernet/intel/libeth/stats.c b/drivers/net/ethernet/intel/libeth/stats.c
new file mode 100644
index 000000000000..61618aa71cbf
--- /dev/null
+++ b/drivers/net/ethernet/intel/libeth/stats.c
@@ -0,0 +1,360 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright (C) 2024 Intel Corporation */
+
+#include <linux/ethtool.h>
+
+#include <net/libeth/stats.h>
+#include <net/netdev_queues.h>
+
+#include "priv.h"
+
+/* Common */
+
+static void libeth_stats_sync(u64 *base, u64 *sarr,
+			      const struct u64_stats_sync *syncp,
+			      const u64_stats_t *raw, u32 num)
+{
+	u32 start;
+
+	do {
+		start = u64_stats_fetch_begin(syncp);
+		for (u32 i = 0; i < num; i++)
+			sarr[i] = u64_stats_read(&raw[i]);
+	} while (u64_stats_fetch_retry(syncp, start));
+
+	for (u32 i = 0; i < num; i++)
+		base[i] += sarr[i];
+}
+
+static void __libeth_stats_get_strings(u8 **data, u32 qid, const char *pfx,
+				       const char * const *str, u32 num)
+{
+	for (u32 i = 0; i < num; i++)
+		ethtool_sprintf(data, "%s%u_%s", pfx, qid, str[i]);
+}
+
+/* The following barely readable compression block defines, amidst others,
+ * exported libeth_{rq,sq,xdpsq}_stats_{,de}init() which must be called for
+ * each stats container embedded in a queue structure on ifup/ifdown
+ * correspondingly. Note that the @qid it takes is the networking stack
+ * queue ID, not a driver/device internal one.
+ */
+
+#define ___base(s)		aligned_u64	s;
+#define ___string(s)		__stringify(s),
+
+#define LIBETH_STATS_DEFINE_HELPERS(pfx, PFX)				      \
+struct libeth_##pfx##_base_stats {					      \
+	struct mutex		lock;					      \
+									      \
+	union {								      \
+		struct {						      \
+			LIBETH_DECLARE_##PFX##_STATS(___base);		      \
+		};							      \
+		DECLARE_FLEX_ARRAY(aligned_u64, raw);			      \
+	};								      \
+};									      \
+static const char * const libeth_##pfx##_stats_str[] = {		      \
+	LIBETH_DECLARE_##PFX##_STATS(___string)				      \
+};									      \
+static const u32 LIBETH_##PFX##_STATS_NUM =				      \
+	ARRAY_SIZE(libeth_##pfx##_stats_str);				      \
+									      \
+static void libeth_##pfx##_stats_sync(u64 *base,			      \
+				      const struct libeth_##pfx##_stats *qs)  \
+{									      \
+	u64 sarr[ARRAY_SIZE(libeth_##pfx##_stats_str)];			      \
+									      \
+	if (qs)								      \
+		libeth_stats_sync(base, sarr, &qs->syncp, qs->raw,	      \
+				  LIBETH_##PFX##_STATS_NUM);		      \
+}									      \
+									      \
+void libeth_##pfx##_stats_init(const struct net_device *dev,		      \
+			       struct libeth_##pfx##_stats *stats,	      \
+			       u32 qid)					      \
+{									      \
+	const struct libeth_netdev_priv *priv = netdev_priv(dev);	      \
+									      \
+	memset(stats, 0, sizeof(*stats));				      \
+	u64_stats_init(&stats->syncp);					      \
+									      \
+	mutex_init(&priv->base_##pfx##s[qid].lock);			      \
+	WRITE_ONCE(priv->live_##pfx##s[qid], stats);			      \
+}									      \
+EXPORT_SYMBOL_NS_GPL(libeth_##pfx##_stats_init, LIBETH);		      \
+									      \
+void libeth_##pfx##_stats_deinit(const struct net_device *dev, u32 qid)       \
+{									      \
+	const struct libeth_netdev_priv *priv = netdev_priv(dev);	      \
+	struct libeth_##pfx##_base_stats *base = &priv->base_##pfx##s[qid];   \
+									      \
+	mutex_lock(&base->lock);					      \
+	libeth_##pfx##_stats_sync(base->raw,				      \
+				  READ_ONCE(priv->live_##pfx##s[qid]));	      \
+	mutex_unlock(&base->lock);					      \
+									      \
+	WRITE_ONCE(priv->live_##pfx##s[qid], NULL);			      \
+}									      \
+EXPORT_SYMBOL_NS_GPL(libeth_##pfx##_stats_deinit, LIBETH);		      \
+									      \
+static void libeth_##pfx##_stats_get_strings(u8 **data, u32 num)	      \
+{									      \
+	for (u32 i = 0; i < num; i++)					      \
+		__libeth_stats_get_strings(data, i, #pfx,		      \
+					   libeth_##pfx##_stats_str,	      \
+					   LIBETH_##PFX##_STATS_NUM);	      \
+}									      \
+									      \
+static void								      \
+__libeth_##pfx##_stats_get_data(u64 **data,				      \
+				struct libeth_##pfx##_base_stats *base,	      \
+				const struct libeth_##pfx##_stats *qs)	      \
+{									      \
+	mutex_lock(&base->lock);					      \
+	memcpy(*data, base->raw, sizeof(*base));			      \
+	mutex_unlock(&base->lock);					      \
+									      \
+	libeth_##pfx##_stats_sync(*data, qs);				      \
+	*data += LIBETH_##PFX##_STATS_NUM;				      \
+}									      \
+									      \
+static void								      \
+libeth_##pfx##_stats_get_data(u64 **data,				      \
+			      const struct libeth_netdev_priv *priv)	      \
+{									      \
+	for (u32 i = 0; i < priv->last_##pfx##s; i++) {			      \
+		const struct libeth_##pfx##_stats *qs;			      \
+									      \
+		qs = READ_ONCE(priv->live_##pfx##s[i]);			      \
+		__libeth_##pfx##_stats_get_data(data,			      \
+						&priv->base_##pfx##s[i],      \
+						qs);			      \
+	}								      \
+}
+
+LIBETH_STATS_DEFINE_HELPERS(rq, RQ);
+LIBETH_STATS_DEFINE_HELPERS(sq, SQ);
+LIBETH_STATS_DEFINE_HELPERS(xdpsq, XDPSQ);
+
+#undef ___base
+#undef ___string
+
+/* Netlink stats. Exported fields have the same names as in the NL structs */
+
+struct libeth_stats_export {
+	u16	li;
+	u16	gi;
+};
+
+#define LIBETH_STATS_EXPORT(lpfx, gpfx, field) {			      \
+	.li = (offsetof(struct libeth_##lpfx##_stats, field) -		      \
+	       offsetof(struct libeth_##lpfx##_stats, raw)) /		      \
+	      sizeof_field(struct libeth_##lpfx##_stats, field),	      \
+	.gi = offsetof(struct netdev_queue_stats_##gpfx, field) /	      \
+	      sizeof_field(struct netdev_queue_stats_##gpfx, field)	      \
+}
+#define LIBETH_RQ_STATS_EXPORT(field)	LIBETH_STATS_EXPORT(rq, rx, field)
+#define LIBETH_SQ_STATS_EXPORT(field)	LIBETH_STATS_EXPORT(sq, tx, field)
+
+static const struct libeth_stats_export libeth_rq_stats_export[] = {
+	LIBETH_RQ_STATS_EXPORT(bytes),
+	LIBETH_RQ_STATS_EXPORT(packets),
+	LIBETH_RQ_STATS_EXPORT(csum_unnecessary),
+	LIBETH_RQ_STATS_EXPORT(hw_gro_packets),
+	LIBETH_RQ_STATS_EXPORT(hw_gro_bytes),
+	LIBETH_RQ_STATS_EXPORT(alloc_fail),
+	LIBETH_RQ_STATS_EXPORT(csum_none),
+	LIBETH_RQ_STATS_EXPORT(csum_bad),
+};
+
+static const struct libeth_stats_export libeth_sq_stats_export[] = {
+	LIBETH_SQ_STATS_EXPORT(bytes),
+	LIBETH_SQ_STATS_EXPORT(packets),
+	LIBETH_SQ_STATS_EXPORT(csum_none),
+	LIBETH_SQ_STATS_EXPORT(needs_csum),
+	LIBETH_SQ_STATS_EXPORT(hw_gso_packets),
+	LIBETH_SQ_STATS_EXPORT(hw_gso_bytes),
+	LIBETH_SQ_STATS_EXPORT(stop),
+	LIBETH_SQ_STATS_EXPORT(wake),
+};
+
+#define libeth_stats_foreach_export(pfx, iter)				      \
+	for (const struct libeth_stats_export *iter =			      \
+		&libeth_##pfx##_stats_export[0];			      \
+	     iter < &libeth_##pfx##_stats_export[			      \
+		ARRAY_SIZE(libeth_##pfx##_stats_export)];		      \
+	     iter++)
+
+#define LIBETH_STATS_DEFINE_EXPORT(pfx, gpfx)				      \
+static void								      \
+libeth_get_queue_stats_##gpfx(struct net_device *dev, int idx,		      \
+			      struct netdev_queue_stats_##gpfx *stats)	      \
+{									      \
+	const struct libeth_netdev_priv *priv = netdev_priv(dev);	      \
+	const struct libeth_##pfx##_stats *qs;				      \
+	u64 *raw = (u64 *)stats;					      \
+	u32 start;							      \
+									      \
+	qs = READ_ONCE(priv->live_##pfx##s[idx]);			      \
+	if (!qs)							      \
+		return;							      \
+									      \
+	do {								      \
+		start = u64_stats_fetch_begin(&qs->syncp);		      \
+									      \
+		libeth_stats_foreach_export(pfx, exp)			      \
+			raw[exp->gi] = u64_stats_read(&qs->raw[exp->li]);     \
+	} while (u64_stats_fetch_retry(&qs->syncp, start));		      \
+}									      \
+									      \
+static void								      \
+libeth_get_##pfx##_base_stats(const struct net_device *dev,		      \
+			      struct netdev_queue_stats_##gpfx *stats)	      \
+{									      \
+	const struct libeth_netdev_priv *priv = netdev_priv(dev);	      \
+	u64 *raw = (u64 *)stats;					      \
+									      \
+	memset(stats, 0, sizeof(*(stats)));				      \
+									      \
+	for (u32 i = 0; i < dev->num_##gpfx##_queues; i++) {		      \
+		struct libeth_##pfx##_base_stats *base =		      \
+			&priv->base_##pfx##s[i];			      \
+									      \
+		mutex_lock(&base->lock);				      \
+									      \
+		libeth_stats_foreach_export(pfx, exp)			      \
+			raw[exp->gi] += base->raw[exp->li];		      \
+									      \
+		mutex_unlock(&base->lock);				      \
+	}								      \
+}
+
+LIBETH_STATS_DEFINE_EXPORT(rq, rx);
+LIBETH_STATS_DEFINE_EXPORT(sq, tx);
+
+static void libeth_get_base_stats(struct net_device *dev,
+				  struct netdev_queue_stats_rx *rx,
+				  struct netdev_queue_stats_tx *tx)
+{
+	libeth_get_rq_base_stats(dev, rx);
+	libeth_get_sq_base_stats(dev, tx);
+}
+
+static const struct netdev_stat_ops libeth_netdev_stat_ops = {
+	.get_base_stats		= libeth_get_base_stats,
+	.get_queue_stats_rx	= libeth_get_queue_stats_rx,
+	.get_queue_stats_tx	= libeth_get_queue_stats_tx,
+};
+
+/* Ethtool: base + live */
+
+int libeth_stats_get_sset_count(struct net_device *dev)
+{
+	struct libeth_netdev_priv *priv = netdev_priv(dev);
+
+	priv->last_rqs = dev->real_num_rx_queues;
+	priv->last_sqs = dev->real_num_tx_queues;
+	priv->last_xdpsqs = priv->curr_xdpsqs;
+
+	return priv->last_rqs * LIBETH_RQ_STATS_NUM +
+	       priv->last_sqs * LIBETH_SQ_STATS_NUM +
+	       priv->last_xdpsqs * LIBETH_XDPSQ_STATS_NUM;
+}
+
+void libeth_stats_get_strings(struct net_device *dev, u8 *data)
+{
+	const struct libeth_netdev_priv *priv = netdev_priv(dev);
+
+	libeth_rq_stats_get_strings(&data, priv->last_rqs);
+	libeth_sq_stats_get_strings(&data, priv->last_sqs);
+	libeth_xdpsq_stats_get_strings(&data, priv->last_xdpsqs);
+}
+
+void libeth_stats_get_data(struct net_device *dev, u64 *data)
+{
+	struct libeth_netdev_priv *priv = netdev_priv(dev);
+
+	libeth_rq_stats_get_data(&data, priv);
+	libeth_sq_stats_get_data(&data, priv);
+	libeth_xdpsq_stats_get_data(&data, priv);
+
+	priv->last_rqs = 0;
+	priv->last_sqs = 0;
+	priv->last_xdpsqs = 0;
+}
+
+/* Private init.
+ * All the structures getting allocated here are slowpath, so NUMA-aware
+ * allocation is not required for them.
+ */
+
+bool libeth_stats_init_priv(struct net_device *dev, u32 rqs, u32 sqs,
+			    u32 xdpsqs)
+{
+	struct libeth_netdev_priv *priv = netdev_priv(dev);
+
+	priv->base_rqs = kvcalloc(rqs, sizeof(*priv->base_rqs), GFP_KERNEL);
+	if (!priv->base_rqs)
+		return false;
+
+	priv->live_rqs = kvcalloc(rqs, sizeof(*priv->live_rqs), GFP_KERNEL);
+	if (!priv->live_rqs)
+		goto err_base_rqs;
+
+	priv->base_sqs = kvcalloc(sqs, sizeof(*priv->base_sqs), GFP_KERNEL);
+	if (!priv->base_sqs)
+		goto err_live_rqs;
+
+	priv->live_sqs = kvcalloc(sqs, sizeof(*priv->live_sqs), GFP_KERNEL);
+	if (!priv->live_sqs)
+		goto err_base_sqs;
+
+	dev->stat_ops = &libeth_netdev_stat_ops;
+
+	if (!xdpsqs)
+		return true;
+
+	priv->base_xdpsqs = kvcalloc(xdpsqs, sizeof(*priv->base_xdpsqs),
+				     GFP_KERNEL);
+	if (!priv->base_xdpsqs)
+		goto err_live_sqs;
+
+	priv->live_xdpsqs = kvcalloc(xdpsqs, sizeof(*priv->live_xdpsqs),
+				     GFP_KERNEL);
+	if (!priv->live_xdpsqs)
+		goto err_base_xdpsqs;
+
+	priv->max_xdpsqs = xdpsqs;
+
+	return true;
+
+err_base_xdpsqs:
+	kvfree(priv->base_xdpsqs);
+err_live_sqs:
+	kvfree(priv->live_sqs);
+err_base_sqs:
+	kvfree(priv->base_sqs);
+err_live_rqs:
+	kvfree(priv->live_rqs);
+err_base_rqs:
+	kvfree(priv->base_rqs);
+
+	return false;
+}
+
+void libeth_stats_free_priv(const struct net_device *dev)
+{
+	const struct libeth_netdev_priv *priv = netdev_priv(dev);
+
+	kvfree(priv->base_rqs);
+	kvfree(priv->live_rqs);
+	kvfree(priv->base_sqs);
+	kvfree(priv->live_sqs);
+
+	if (!priv->max_xdpsqs)
+		return;
+
+	kvfree(priv->base_xdpsqs);
+	kvfree(priv->live_xdpsqs);
+}
-- 
2.45.2

