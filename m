Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F41EF716614
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 17:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A84D83D04;
	Tue, 30 May 2023 15:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A84D83D04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685459106;
	bh=Qxb5VyluIxD/oVKH9tM+KjgIVfugdYIaUOqLL4ubT6w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L+6bvYVN9nUhuFUIKlrfnr81pt5xa+Hmyx8ulV3zhxSc6u0tEoL/VytdQII8Rjn4r
	 2lbNCh3RY/7ktaL7Zc+0qo9pGNg2c0emYKkN77Y8VHR11hpLEn0LP+HcMKDQhcOPMw
	 MR7jNSrcAkULo3HVAs107tEtuIjetX7zPg7PEbj9j1WpYDnISlrOFqqr0Xn5Zf9C1d
	 DWHABVYyaQ3MgnqMsb+VCJeV24p2yDMF7+CBPURSUFiwjcOsIQ2u2TGHnvXuGi7S8U
	 tLLvS+kZmrfKUWvzSw5CLMm0UEPpF6DooWZ0JyXaB0Ufuxg7ybrLYO+/Va87/ZwdtL
	 cHF8OVd16mtng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjD41l_APiQk; Tue, 30 May 2023 15:05:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45F8583D10;
	Tue, 30 May 2023 15:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45F8583D10
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 981D41BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 719DC40901
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 719DC40901
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNTkbhfa2c0w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 15:04:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FF6740574
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5FF6740574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 15:04:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358192629"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358192629"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 08:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796304206"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="796304206"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 08:03:41 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 30 May 2023 17:00:33 +0200
Message-Id: <20230530150035.1943669-11-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685459080; x=1716995080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8rv9nlvNwZI0m5eeZfeqrro4xCO6aRYBd1RceFAklCo=;
 b=lwuvLRLIPQ8QDOHLhQepu8zvUSc/1L21sypSq9IpPRkIU/Y3jyf0kfAX
 HfW1YNfXXYAdDhUre/0bG2VqWMrFLJYmPaLtjAphSRf5TjHmq13i3fedI
 lv9bomAIOM5UHLJsaEf8annjRWTiXyBX8+MP0HMnDM+3rfmOmJbSj6moD
 TkGAOXrajHuDmlpB0vGofHTAfH45/ckX8NTFdl2gT/OX46pFBdFmqQMUE
 1E5iMnlWk8/lr7fRXQqdGN9ASuZ1Fx+5GFvrcuJx1w4nlAc/6V1KYzm57
 ITk7nJFnov/F2H3yJmpIW455YM2Q6pOoATYrizHtXCMfbPm9zTH7wmlYA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lwuvLRLI
Subject: [Intel-wired-lan] [PATCH net-next v3 10/12] libie: add common queue
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
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
 drivers/net/ethernet/intel/libie/stats.c  | 119 ++++++++++++++
 include/linux/net/intel/libie/stats.h     | 179 ++++++++++++++++++++++
 3 files changed, 299 insertions(+)
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
index 000000000000..61456842a362
--- /dev/null
+++ b/drivers/net/ethernet/intel/libie/stats.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Copyright(c) 2023 Intel Corporation. */
+
+#include <linux/ethtool.h>
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
+ * Returns the number of per-queue Rx stats supported by the library.
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
+ * Returns the number of per-queue Tx stats supported by the library.
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
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
