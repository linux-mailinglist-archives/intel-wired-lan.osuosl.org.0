Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 051D77F7849
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 16:51:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85208421C6;
	Fri, 24 Nov 2023 15:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85208421C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700841077;
	bh=7D3SPoppdkr9nOsIWPhz2IKTbpc+FMP5dc6X58nQVh8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f9xoW/znqpXPsqV9u3Dx+yCxzGE6CzdGzYRkvsdQDg1Rbq/psw36wd4F2hCFjEmxZ
	 38d0xB8a1n50PuOfkh+g1AYuuCp4o9ERApAZKdd9qy6C2S4Yi9zdJWBN3H1kLJxzcU
	 wgVR9Jm3jHaoDHvg7fHoee0kyutox9dr+XNvBRIqq+B7ImAhKvqpmg8OdrF61BJqsf
	 HaAqpw41i8vv5XLhLR+x3HNP9GjktGLG94yMeXMTION5cgL8HT7OhpWv24mYsclrlG
	 x9JTBTrAFBOvpEHjBswVBmGEbrpT3uk49LTCVK6qu4/UUpr56IL9ERI4o6Fs6CBMCk
	 ckC4TAB5WDtMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3X_iuwrYf5Vu; Fri, 24 Nov 2023 15:51:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7D5D4215E;
	Fri, 24 Nov 2023 15:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7D5D4215E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A09B51BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8659942181
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8659942181
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUEJtdNLxz4R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 15:50:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71CD842169
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 15:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71CD842169
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="389592627"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="389592627"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 07:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="15660369"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 24 Nov 2023 07:50:46 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri, 24 Nov 2023 16:47:30 +0100
Message-ID: <20231124154732.1623518-13-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700841050; x=1732377050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r4kfju2IP4bTuXNwTT8bqO0S6BPtNXOe53sPS88dS5s=;
 b=nA9vEITccCp86QeGLTKbyMDuYH1eqVQnXVgkTQDR0aTgqAN+qrZ5GZVt
 dAfdrw/mK3G5hTQ4qZ9XBrQeXzA+9K9juRIJXKb7Jk0w8Qmpb7utIqbg/
 Z5U02jWPj2fWRT05uQ3lUVGRVl96guWSVJaSx6WDQwiGhhB5hGuHCnl/s
 RbeVwrq4DXvOilc2m5bHB0zESkBZdWMlppYzmpi/Xmj1zeCPN4L6JEzYd
 JZ9AR26Ia2dInrNXXUd7EifFlvYkNjT7fP/+dDYJF2wWf1SjC9gOPfKBM
 IpTAzt0YUYMMpI6cpMK7AnWj+BGyoTKY8w7n43EtTJO8t87SpIxr9B6or
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nA9vEITc
Subject: [Intel-wired-lan] [PATCH net-next v5 12/14] libie: add common queue
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
 drivers/net/ethernet/intel/libie/stats.c  | 122 +++++++++++++++
 include/linux/net/intel/libie/rx.h        |   5 +
 include/linux/net/intel/libie/stats.h     | 181 ++++++++++++++++++++++
 4 files changed, 309 insertions(+)
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
index 000000000000..bdcbe4304c55
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/stats.c
@@ -0,0 +1,122 @@
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
+ * @rq: Rx queue to fetch the data
+ */
+void libie_rq_stats_get_data(u64 **data, const struct libie_rx_queue *rq)
+{
+	const struct libie_rq_stats *stats = rq->stats;
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
diff --git a/include/linux/net/intel/libie/rx.h b/include/linux/net/intel/libie/rx.h
index 06c4f00dad63..8542815c9973 100644
--- a/include/linux/net/intel/libie/rx.h
+++ b/include/linux/net/intel/libie/rx.h
@@ -46,6 +46,8 @@
 
 /* Rx buffer management */
 
+struct libie_rq_stats;
+
 /**
  * struct libie_rx_buffer - structure representing an Rx buffer
  * @page: page holding the buffer
@@ -68,6 +70,7 @@ struct libie_rx_buffer {
  * @rx_bi: array of Rx buffers
  * @truesize: size to allocate per buffer, w/overhead
  * @count: number of descriptors/buffers the queue has
+ * @stats: pointer to the software per-queue stats
  * @rx_buf_len: HW-writeable length per each buffer
  */
 struct libie_rx_queue {
@@ -77,6 +80,8 @@ struct libie_rx_queue {
 	u32			truesize;
 	u32			count;
 
+	struct libie_rq_stats	*stats;
+
 	/* Cold fields */
 	u32			rx_buf_len;
 };
diff --git a/include/linux/net/intel/libie/stats.h b/include/linux/net/intel/libie/stats.h
new file mode 100644
index 000000000000..4e6dfb8c715f
--- /dev/null
+++ b/include/linux/net/intel/libie/stats.h
@@ -0,0 +1,181 @@
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
+struct libie_rx_queue;
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
+void libie_rq_stats_get_data(u64 **data, const struct libie_rx_queue *rq);
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
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
