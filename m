Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4639B808E9C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:23:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D51D883D68;
	Thu,  7 Dec 2023 17:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D51D883D68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969792;
	bh=lvk39j0LXK9vM71V9CWpkYMqhrCILgZn7DsKpWFjgS4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lyMjIA1B0pe9NjRGV4Ao/ilETgDI7hnlkUJ3d9poxGS1h0Gkg90d3TLYsFkyV/bho
	 itRgcrWEegrXwZFqL8mcTEkbZpsKHw89gNxDXL+mDKfIIaQB2ykOyqkH2zSu+qklTQ
	 /Va0qYhJfcXwAqW5ZauU5m3Vj8/8t+dit1JqOPASeuM8r/a1rv+t3bCfdQaImApkoh
	 CqDvNoIvtGv3dl/GuUqiMYuzTncTzRFowCavu9gz7jYS2Wfe1QRvThxJHmTs+KRCAS
	 pLT1i6Vs1bmT61HM81TZ3hOI4IjTHU/vXZIwdQmwuMCIjizXYg7ya316mM79skrcvx
	 6UMWH36Y1Qljg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b0RTHtg2Zlb3; Thu,  7 Dec 2023 17:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EC9B83D1D;
	Thu,  7 Dec 2023 17:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EC9B83D1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DCB81BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 425CB41E61
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 425CB41E61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4tBwFHsY--6W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:22:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38E224161B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38E224161B
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374435032"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374435032"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721548693"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721548693"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:22:42 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  7 Dec 2023 18:20:09 +0100
Message-ID: <20231207172010.1441468-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969767; x=1733505767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wqWe+I/UHPvQw6gjoo1ner/8yLTJmp59IEP+EBAhMOE=;
 b=cWcAhEtd7tqhAFVyEZYtdoySzq5pLLIAdgyN2QobqCjHoQBNehO06PBq
 BXCCmZBqsMN0btpuAtCkonoZvy0guHBAbRLQq/O204kpcORtTXEycNaQm
 qp6ypA+OyA/kOqN94pPqUbErqTDoH1PusDPFD51sh3smXhp4sBkyu5jj2
 k1Pt3JTL0WugA8p9T03AmyKXfUZQUdur4gPgcALhYvL1F5gM9ouPN12jt
 jZiGF9ZZQ6yHTrr8d7HSnfyIRxya4FbrHNEOWusMtPGFHoVSmsPzBE01L
 D+2Rl7JMTNeTKppmzHPgDAgFDk1x0EFP7rOxrIYDVxk7J5ePGTnmOlyn8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cWcAhEtd
Subject: [Intel-wired-lan] [PATCH net-next v6 11/12] libie: add common queue
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Next stop, per-queue private stats. They have only subtle differences
from driver to driver and can easily be resolved.
Define common structures, inline helpers and Ethtool helpers to collect,
update and export the statistics. Use u64_stats_t right from the start,
as well as the corresponding helpers to ensure tear-free operations.
For the NAPI parts of both Rx and Tx, also define small onstack
containers to update them in polling loops and then sync the actual
containers once a loop ends.
The drivers will be switched to use this API later on a per-driver
basis, along with conversion to PP.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libie/Makefile |   1 +
 drivers/net/ethernet/intel/libie/stats.c  | 121 +++++++++++++++
 include/linux/net/intel/libie/stats.h     | 179 ++++++++++++++++++++++
 3 files changed, 301 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/libie/stats.c
 create mode 100644 include/linux/net/intel/libie/stats.h

diff --git a/drivers/net/ethernet/intel/libie/Makefile b/drivers/net/ethernet/intel/libie/Makefile
index 95e81d09b474..76f32253481b 100644
--- a/drivers/net/ethernet/intel/libie/Makefile
+++ b/drivers/net/ethernet/intel/libie/Makefile
@@ -4,3 +4,4 @@
 obj-$(CONFIG_LIBIE)	+= libie.o
 
 libie-objs		+= rx.o
+libie-objs		+= stats.o
diff --git a/drivers/net/ethernet/intel/libie/stats.c b/drivers/net/ethernet/intel/libie/stats.c
new file mode 100644
index 000000000000..85f5d279406f
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/stats.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright(c) 2023 Intel Corporation. */
+
+#include <linux/ethtool.h>
+
+#include <linux/net/intel/libie/rx.h>
+#include <linux/net/intel/libie/stats.h>
+
+/* Rx per-queue stats */
+
+static const char * const libie_rq_stats_str[] = {
+#define act(s)	__stringify(s),
+	DECLARE_LIBIE_RQ_STATS(act)
+#undef act
+};
+
+#define LIBIE_RQ_STATS_NUM	ARRAY_SIZE(libie_rq_stats_str)
+
+/**
+ * libie_rq_stats_get_sset_count - get the number of Ethtool RQ stats provided
+ *
+ * Return: number of per-queue Rx stats supported by the library.
+ */
+u32 libie_rq_stats_get_sset_count(void)
+{
+	return LIBIE_RQ_STATS_NUM;
+}
+EXPORT_SYMBOL_NS_GPL(libie_rq_stats_get_sset_count, LIBIE);
+
+/**
+ * libie_rq_stats_get_strings - get the name strings of Ethtool RQ stats
+ * @data: reference to the cursor pointing to the output buffer
+ * @qid: RQ number to print in the prefix
+ */
+void libie_rq_stats_get_strings(u8 **data, u32 qid)
+{
+	for (u32 i = 0; i < LIBIE_RQ_STATS_NUM; i++)
+		ethtool_sprintf(data, "rq%u_%s", qid, libie_rq_stats_str[i]);
+}
+EXPORT_SYMBOL_NS_GPL(libie_rq_stats_get_strings, LIBIE);
+
+/**
+ * libie_rq_stats_get_data - get the RQ stats in Ethtool format
+ * @data: reference to the cursor pointing to the output array
+ * @stats: RQ stats container from the queue
+ */
+void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats)
+{
+	u64 sarr[LIBIE_RQ_STATS_NUM];
+	u32 start;
+
+	do {
+		start = u64_stats_fetch_begin(&stats->syncp);
+
+		for (u32 i = 0; i < LIBIE_RQ_STATS_NUM; i++)
+			sarr[i] = u64_stats_read(&stats->raw[i]);
+	} while (u64_stats_fetch_retry(&stats->syncp, start));
+
+	for (u32 i = 0; i < LIBIE_RQ_STATS_NUM; i++)
+		(*data)[i] += sarr[i];
+
+	*data += LIBIE_RQ_STATS_NUM;
+}
+EXPORT_SYMBOL_NS_GPL(libie_rq_stats_get_data, LIBIE);
+
+/* Tx per-queue stats */
+
+static const char * const libie_sq_stats_str[] = {
+#define act(s)	__stringify(s),
+	DECLARE_LIBIE_SQ_STATS(act)
+#undef act
+};
+
+#define LIBIE_SQ_STATS_NUM	ARRAY_SIZE(libie_sq_stats_str)
+
+/**
+ * libie_sq_stats_get_sset_count - get the number of Ethtool SQ stats provided
+ *
+ * Return: number of per-queue Tx stats supported by the library.
+ */
+u32 libie_sq_stats_get_sset_count(void)
+{
+	return LIBIE_SQ_STATS_NUM;
+}
+EXPORT_SYMBOL_NS_GPL(libie_sq_stats_get_sset_count, LIBIE);
+
+/**
+ * libie_sq_stats_get_strings - get the name strings of Ethtool SQ stats
+ * @data: reference to the cursor pointing to the output buffer
+ * @qid: SQ number to print in the prefix
+ */
+void libie_sq_stats_get_strings(u8 **data, u32 qid)
+{
+	for (u32 i = 0; i < LIBIE_SQ_STATS_NUM; i++)
+		ethtool_sprintf(data, "sq%u_%s", qid, libie_sq_stats_str[i]);
+}
+EXPORT_SYMBOL_NS_GPL(libie_sq_stats_get_strings, LIBIE);
+
+/**
+ * libie_sq_stats_get_data - get the SQ stats in Ethtool format
+ * @data: reference to the cursor pointing to the output array
+ * @stats: SQ stats container from the queue
+ */
+void libie_sq_stats_get_data(u64 **data, const struct libie_sq_stats *stats)
+{
+	u64 sarr[LIBIE_SQ_STATS_NUM];
+	u32 start;
+
+	do {
+		start = u64_stats_fetch_begin(&stats->syncp);
+
+		for (u32 i = 0; i < LIBIE_SQ_STATS_NUM; i++)
+			sarr[i] = u64_stats_read(&stats->raw[i]);
+	} while (u64_stats_fetch_retry(&stats->syncp, start));
+
+	for (u32 i = 0; i < LIBIE_SQ_STATS_NUM; i++)
+		(*data)[i] += sarr[i];
+
+	*data += LIBIE_SQ_STATS_NUM;
+}
+EXPORT_SYMBOL_NS_GPL(libie_sq_stats_get_data, LIBIE);
diff --git a/include/linux/net/intel/libie/stats.h b/include/linux/net/intel/libie/stats.h
new file mode 100644
index 000000000000..dbbc98bbd3a7
--- /dev/null
+++ b/include/linux/net/intel/libie/stats.h
@@ -0,0 +1,179 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright(c) 2023 Intel Corporation. */
+
+#ifndef __LIBIE_STATS_H
+#define __LIBIE_STATS_H
+
+#include <linux/u64_stats_sync.h>
+
+/* Common */
+
+/* Use 32-byte alignment to reduce false sharing */
+#define __libie_stats_aligned	__aligned(4 * sizeof(u64_stats_t))
+
+/**
+ * libie_stats_add - update one structure counter from a local struct
+ * @qs: queue stats structure to update (&libie_rq_stats or &libie_sq_stats)
+ * @ss: local/onstack stats structure
+ * @f: name of the field to update
+ *
+ * If a local/onstack stats structure is used to collect statistics during
+ * hotpath loops, this macro can be used to shorthand updates, given that
+ * the fields have the same name.
+ * Must be guarded with u64_stats_update_{begin,end}().
+ */
+#define libie_stats_add(qs, ss, f)			\
+	u64_stats_add(&(qs)->f, (ss)->f)
+
+/**
+ * __libie_stats_inc_one - safely increment one stats structure counter
+ * @s: queue stats structure to update (&libie_rq_stats or &libie_sq_stats)
+ * @f: name of the field to increment
+ * @n: name of the temporary variable, result of __UNIQUE_ID()
+ *
+ * To be used on exception or slow paths -- allocation fails, queue stops etc.
+ */
+#define __libie_stats_inc_one(s, f, n) ({		\
+	typeof(*(s)) *n = (s);				\
+							\
+	u64_stats_update_begin(&n->syncp);		\
+	u64_stats_inc(&n->f);				\
+	u64_stats_update_end(&n->syncp);		\
+})
+#define libie_stats_inc_one(s, f)			\
+	__libie_stats_inc_one(s, f, __UNIQUE_ID(qs_))
+
+/* Rx per-queue stats:
+ * packets: packets received on this queue
+ * bytes: bytes received on this queue
+ * fragments: number of processed descriptors carrying only a fragment
+ * alloc_page_fail: number of Rx page allocation fails
+ * build_skb_fail: number of build_skb() fails
+ */
+
+#define DECLARE_LIBIE_RQ_NAPI_STATS(act)		\
+	act(packets)					\
+	act(bytes)					\
+	act(fragments)
+
+#define DECLARE_LIBIE_RQ_FAIL_STATS(act)		\
+	act(alloc_page_fail)				\
+	act(build_skb_fail)
+
+#define DECLARE_LIBIE_RQ_STATS(act)			\
+	DECLARE_LIBIE_RQ_NAPI_STATS(act)		\
+	DECLARE_LIBIE_RQ_FAIL_STATS(act)
+
+struct libie_rq_stats {
+	struct u64_stats_sync	syncp;
+
+	union {
+		struct {
+#define act(s)	u64_stats_t	s;
+			DECLARE_LIBIE_RQ_NAPI_STATS(act);
+			DECLARE_LIBIE_RQ_FAIL_STATS(act);
+#undef act
+		};
+		DECLARE_FLEX_ARRAY(u64_stats_t, raw);
+	};
+} __libie_stats_aligned;
+
+/* Rx stats being modified frequently during the NAPI polling, to sync them
+ * with the queue stats once after the loop is finished.
+ */
+struct libie_rq_onstack_stats {
+	union {
+		struct {
+#define act(s)	u32		s;
+			DECLARE_LIBIE_RQ_NAPI_STATS(act);
+#undef act
+		};
+		DECLARE_FLEX_ARRAY(u32, raw);
+	};
+};
+
+/**
+ * libie_rq_napi_stats_add - add onstack Rx stats to the queue container
+ * @qs: Rx queue stats structure to update
+ * @ss: onstack structure to get the values from, updated during the NAPI loop
+ */
+static inline void
+libie_rq_napi_stats_add(struct libie_rq_stats *qs,
+			const struct libie_rq_onstack_stats *ss)
+{
+	u64_stats_update_begin(&qs->syncp);
+	libie_stats_add(qs, ss, packets);
+	libie_stats_add(qs, ss, bytes);
+	libie_stats_add(qs, ss, fragments);
+	u64_stats_update_end(&qs->syncp);
+}
+
+u32 libie_rq_stats_get_sset_count(void);
+void libie_rq_stats_get_strings(u8 **data, u32 qid);
+void libie_rq_stats_get_data(u64 **data, const struct libie_rq_stats *stats);
+
+/* Tx per-queue stats:
+ * packets: packets sent from this queue
+ * bytes: bytes sent from this queue
+ * busy: number of xmit failures due to the ring being full
+ * stops: number times the ring was stopped from the driver
+ * restarts: number times it was started after being stopped
+ * linearized: number of skbs linearized due to HW limits
+ */
+
+#define DECLARE_LIBIE_SQ_NAPI_STATS(act)		\
+	act(packets)					\
+	act(bytes)
+
+#define DECLARE_LIBIE_SQ_XMIT_STATS(act)		\
+	act(busy)					\
+	act(stops)					\
+	act(restarts)					\
+	act(linearized)
+
+#define DECLARE_LIBIE_SQ_STATS(act)			\
+	DECLARE_LIBIE_SQ_NAPI_STATS(act)		\
+	DECLARE_LIBIE_SQ_XMIT_STATS(act)
+
+struct libie_sq_stats {
+	struct u64_stats_sync	syncp;
+
+	union {
+		struct {
+#define act(s)	u64_stats_t	s;
+			DECLARE_LIBIE_SQ_STATS(act);
+#undef act
+		};
+		DECLARE_FLEX_ARRAY(u64_stats_t, raw);
+	};
+} __libie_stats_aligned;
+
+struct libie_sq_onstack_stats {
+#define act(s)	u32		s;
+	DECLARE_LIBIE_SQ_NAPI_STATS(act);
+#undef act
+};
+
+/**
+ * libie_sq_napi_stats_add - add onstack Tx stats to the queue container
+ * @qs: Tx queue stats structure to update
+ * @ss: onstack structure to get the values from, updated during the NAPI loop
+ */
+static inline void
+libie_sq_napi_stats_add(struct libie_sq_stats *qs,
+			const struct libie_sq_onstack_stats *ss)
+{
+	if (unlikely(!ss->packets))
+		return;
+
+	u64_stats_update_begin(&qs->syncp);
+	libie_stats_add(qs, ss, packets);
+	libie_stats_add(qs, ss, bytes);
+	u64_stats_update_end(&qs->syncp);
+}
+
+u32 libie_sq_stats_get_sset_count(void);
+void libie_sq_stats_get_strings(u8 **data, u32 qid);
+void libie_sq_stats_get_data(u64 **data, const struct libie_sq_stats *stats);
+
+#endif /* __LIBIE_STATS_H */
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
