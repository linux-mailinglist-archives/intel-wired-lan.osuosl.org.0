Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36282949080
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DACC140A49;
	Tue,  6 Aug 2024 13:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYqrfgW-BzLC; Tue,  6 Aug 2024 13:13:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EFA644095F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722950023;
	bh=FmVp1y5/D4XSP2Hsnf+wAr8R9A7NrGiAqkJJp/Y9V6g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uDQTlNMd3eW+l7l95Rrnw3ttXJ6Zv2NwToxDmej+WrcoS/vUaTcS/yVkKEtAv4kdu
	 rZOwC2znehYFjGke7fCQ5jrd7mqAXunD9GKni6eI6Brif4FMpg0CIu11TiQt7Lo9mP
	 emSHm6a0AA2h53cyKWY5NBEqGfbz1xlyg7mY4Cvh2Q4mzInjt5bLnvCJKf3rJQJtDN
	 vHWGQXfgGeHUF0KwL+NJaJxJdldevHIxPNTCsEhUuzh472+F6PP7fUMSKmbd6Ju/DD
	 uytNPlREQ0VIC8eRUS5YMKDxJBxFkRJ+vhhPsHfZ707nW0AWedfmxVGxqETsC+Y7yf
	 OMQzz/AFrf8zA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFA644095F;
	Tue,  6 Aug 2024 13:13:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EF131BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1F38403B2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B5UEt_ZFm4A3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:13:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B675C403DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B675C403DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B675C403DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:13:36 +0000 (UTC)
X-CSE-ConnectionGUID: JHr+56PVQ5u7xVOdtvFuHA==
X-CSE-MsgGUID: 1j5PIdOUTkGbBrYQQjPfbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20842155"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="20842155"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:13:36 -0700
X-CSE-ConnectionGUID: NR7CAJZbT6qOnoaCWh38bA==
X-CSE-MsgGUID: /DlE3SrAQoOwNyBkH3JNHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="56475836"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa009.fm.intel.com with ESMTP; 06 Aug 2024 06:13:33 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 15:12:40 +0200
Message-ID: <20240806131240.800259-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240806131240.800259-1-aleksander.lobakin@intel.com>
References: <20240806131240.800259-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722950016; x=1754486016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GJygAmluDGXL10hIiCB9HMVtwOaHmPS8DwiTlbb1nD4=;
 b=cTgE6RZYAbW8QlQCNUmjPXYBdFOXy64LsYgqyQhE9UUFeV6XYGSeNiZl
 x/n1Iy4M5cYntRSsBl74RYs8KkizVIImC/I1DoBZ434LidIadf3SmwauD
 csuzXaY/3rsFszPtJOB6BLzRzfFqTSUrmWpI+d9cFNLKLYBwjPJ3Hsafl
 Xh1x9s9QEsZ4dOvOyWFOW12G/fOn+3ySfW80ts4bnTuIDjIqNImK1/K7o
 em7JdWBeePfSanS20ZOZaD9CppGNUqiZGFjlOh/QOV9Jaqmdw7jLyCAft
 sEkCWR222gvG9szaH0zfAMzr5yBGPGa7NSEeuljhX25Sf4i07ZL4xEzfO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cTgE6RZY
Subject: [Intel-wired-lan] [PATCH iwl-next 9/9] idpf: switch to libeth
 generic statistics
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

Fully reimplement idpf's per-queue stats using the libeth infra.
Embed &libeth_netdev_priv to the beginning of &idpf_netdev_priv(),
call the necessary init/deinit helpers and the corresponding Ethtool
helpers.
Update hotpath counters such as hsplit and tso/gso using the onstack
containers instead of direct accesses to queue->stats.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  21 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  54 +-
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  33 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 498 ++----------------
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  32 +-
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  76 +--
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 172 +++---
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  37 +-
 8 files changed, 232 insertions(+), 691 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 2c31ad87587a..7df35ec7302c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -138,6 +138,7 @@ enum idpf_vport_state {
 
 /**
  * struct idpf_netdev_priv - Struct to store vport back pointer
+ * @priv: libeth private structure
  * @adapter: Adapter back pointer
  * @vport: Vport back pointer
  * @vport_id: Vport identifier
@@ -147,6 +148,8 @@ enum idpf_vport_state {
  * @stats_lock: Lock to protect stats update
  */
 struct idpf_netdev_priv {
+	struct libeth_netdev_priv priv;
+
 	struct idpf_adapter *adapter;
 	struct idpf_vport *vport;
 	u32 vport_id;
@@ -155,6 +158,7 @@ struct idpf_netdev_priv {
 	struct rtnl_link_stats64 netstats;
 	spinlock_t stats_lock;
 };
+libeth_netdev_priv_assert(struct idpf_netdev_priv, priv);
 
 /**
  * struct idpf_reset_reg - Reset register offsets/masks
@@ -232,19 +236,6 @@ enum idpf_vport_flags {
 	IDPF_VPORT_FLAGS_NBITS,
 };
 
-struct idpf_port_stats {
-	struct u64_stats_sync stats_sync;
-	u64_stats_t rx_hw_csum_err;
-	u64_stats_t rx_hsplit;
-	u64_stats_t rx_hsplit_hbo;
-	u64_stats_t rx_bad_descs;
-	u64_stats_t tx_linearize;
-	u64_stats_t tx_busy;
-	u64_stats_t tx_drops;
-	u64_stats_t tx_dma_map_errs;
-	struct virtchnl2_vport_stats vport_stats;
-};
-
 /**
  * struct idpf_vport - Handle for netdevices and queue resources
  * @num_txq: Number of allocated TX queues
@@ -285,7 +276,7 @@ struct idpf_port_stats {
  * @default_mac_addr: device will give a default MAC to use
  * @rx_itr_profile: RX profiles for Dynamic Interrupt Moderation
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
- * @port_stats: per port csum, header split, and other offload stats
+ * @vport_stats: vport stats reported by HW
  * @link_up: True if link is up
  * @link_speed_mbps: Link speed in mbps
  * @sw_marker_wq: workqueue for marker packets
@@ -328,7 +319,7 @@ struct idpf_vport {
 	u8 default_mac_addr[ETH_ALEN];
 	u16 rx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
 	u16 tx_itr_profile[IDPF_DIM_PROFILE_SLOTS];
-	struct idpf_port_stats port_stats;
+	struct virtchnl2_vport_stats vport_stats;
 
 	bool link_up;
 	u32 link_speed_mbps;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b4a87f8661a8..8188f5cb418b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -7,6 +7,7 @@
 #include <linux/dim.h>
 
 #include <net/libeth/cache.h>
+#include <net/libeth/types.h>
 #include <net/tcp.h>
 #include <net/netdev_queues.h>
 
@@ -143,6 +144,8 @@ do {								\
 #define IDPF_TX_FLAGS_IPV6		BIT(2)
 #define IDPF_TX_FLAGS_TUNNEL		BIT(3)
 
+struct libeth_sq_xmit_stats;
+
 union idpf_tx_flex_desc {
 	struct idpf_flex_tx_desc q; /* queue based scheduling */
 	struct idpf_flex_tx_sched_desc flow; /* flow based scheduling */
@@ -441,28 +444,6 @@ libeth_cacheline_set_assert(struct idpf_q_vector, 112,
 			    424 + 2 * sizeof(struct dim),
 			    8 + sizeof(cpumask_var_t));
 
-struct idpf_rx_queue_stats {
-	u64_stats_t packets;
-	u64_stats_t bytes;
-	u64_stats_t rsc_pkts;
-	u64_stats_t hw_csum_err;
-	u64_stats_t hsplit_pkts;
-	u64_stats_t hsplit_buf_ovf;
-	u64_stats_t bad_descs;
-};
-
-struct idpf_tx_queue_stats {
-	u64_stats_t packets;
-	u64_stats_t bytes;
-	u64_stats_t lso_pkts;
-	u64_stats_t linearize;
-	u64_stats_t q_busy;
-	u64_stats_t skb_drops;
-	u64_stats_t dma_map_errs;
-};
-
-#define idpf_cleaned_stats libeth_sq_napi_stats
-
 #define IDPF_ITR_DYNAMIC	1
 #define IDPF_ITR_MAX		0x1FE0
 #define IDPF_ITR_20K		0x0032
@@ -508,10 +489,9 @@ struct idpf_txq_stash {
  * @next_to_use: Next descriptor to use
  * @next_to_clean: Next descriptor to clean
  * @next_to_alloc: RX buffer to allocate at
- * @skb: Pointer to the skb
  * @truesize: data buffer truesize in singleq
- * @stats_sync: See struct u64_stats_sync
- * @q_stats: See union idpf_rx_queue_stats
+ * @skb: Pointer to the skb
+ * @stats: per-queue RQ stats
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -551,15 +531,14 @@ struct idpf_rx_queue {
 	__cacheline_group_end_aligned(read_mostly);
 
 	__cacheline_group_begin_aligned(read_write);
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 next_to_alloc;
+	u32 next_to_use;
+	u32 next_to_clean;
+	u32 next_to_alloc;
 
-	struct sk_buff *skb;
 	u32 truesize;
+	struct sk_buff *skb;
 
-	struct u64_stats_sync stats_sync;
-	struct idpf_rx_queue_stats q_stats;
+	struct libeth_rq_stats stats;
 	__cacheline_group_end_aligned(read_write);
 
 	__cacheline_group_begin_aligned(cold);
@@ -576,7 +555,7 @@ struct idpf_rx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
-			    80 + sizeof(struct u64_stats_sync),
+			    32 + sizeof(struct libeth_rq_stats),
 			    32);
 
 /**
@@ -633,8 +612,7 @@ libeth_cacheline_set_assert(struct idpf_rx_queue, 64,
  * @compl_tag_bufid_m: Completion tag buffer id mask
  * @compl_tag_cur_gen: Used to keep track of current completion tag generation
  * @compl_tag_gen_max: To determine when compl_tag_cur_gen should be reset
- * @stats_sync: See struct u64_stats_sync
- * @q_stats: See union idpf_tx_queue_stats
+ * @stats: per-queue SQ stats
  * @q_id: Queue id
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
@@ -682,8 +660,7 @@ struct idpf_tx_queue {
 	u16 compl_tag_cur_gen;
 	u16 compl_tag_gen_max;
 
-	struct u64_stats_sync stats_sync;
-	struct idpf_tx_queue_stats q_stats;
+	struct libeth_sq_stats stats;
 	__cacheline_group_end_aligned(read_write);
 
 	__cacheline_group_begin_aligned(cold);
@@ -695,7 +672,7 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(cold);
 };
 libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
-			    88 + sizeof(struct u64_stats_sync),
+			    32 + sizeof(struct libeth_sq_stats),
 			    24);
 
 /**
@@ -1051,7 +1028,8 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 netdev_tx_t idpf_tx_start(struct sk_buff *skb, struct net_device *netdev);
 bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
 				      u16 cleaned_count);
-int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
+int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off,
+	     struct libeth_sq_xmit_stats *ss);
 
 static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
 					     u32 needed)
diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
index 63deb120359c..19d62cfc17be 100644
--- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
+++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
@@ -1021,6 +1021,7 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_get_ptype_info);
  * struct virtchnl2_vport_stats - Vport statistics.
  * @vport_id: Vport id.
  * @pad: Padding.
+ * @counters: grouped counters for bulk operations
  * @rx_bytes: Received bytes.
  * @rx_unicast: Received unicast packets.
  * @rx_multicast: Received multicast packets.
@@ -1045,21 +1046,23 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_get_ptype_info);
 struct virtchnl2_vport_stats {
 	__le32 vport_id;
 	u8 pad[4];
-	__le64 rx_bytes;
-	__le64 rx_unicast;
-	__le64 rx_multicast;
-	__le64 rx_broadcast;
-	__le64 rx_discards;
-	__le64 rx_errors;
-	__le64 rx_unknown_protocol;
-	__le64 tx_bytes;
-	__le64 tx_unicast;
-	__le64 tx_multicast;
-	__le64 tx_broadcast;
-	__le64 tx_discards;
-	__le64 tx_errors;
-	__le64 rx_invalid_frame_length;
-	__le64 rx_overflow_drop;
+	struct_group(counters,
+		__le64 rx_bytes;
+		__le64 rx_unicast;
+		__le64 rx_multicast;
+		__le64 rx_broadcast;
+		__le64 rx_discards;
+		__le64 rx_errors;
+		__le64 rx_unknown_protocol;
+		__le64 tx_bytes;
+		__le64 tx_unicast;
+		__le64 tx_multicast;
+		__le64 tx_broadcast;
+		__le64 tx_discards;
+		__le64 tx_errors;
+		__le64 rx_invalid_frame_length;
+		__le64 rx_overflow_drop;
+	);
 };
 VIRTCHNL2_CHECK_STRUCT_LEN(128, virtchnl2_vport_stats);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 3806ddd3ce4a..5aba64b0b7ec 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
+#include <net/libeth/netdev.h>
+
 #include "idpf.h"
 
 /**
@@ -399,172 +401,37 @@ static int idpf_set_ringparam(struct net_device *netdev,
 	return err;
 }
 
-/**
- * struct idpf_stats - definition for an ethtool statistic
- * @stat_string: statistic name to display in ethtool -S output
- * @sizeof_stat: the sizeof() the stat, must be no greater than sizeof(u64)
- * @stat_offset: offsetof() the stat from a base pointer
- *
- * This structure defines a statistic to be added to the ethtool stats buffer.
- * It defines a statistic as offset from a common base pointer. Stats should
- * be defined in constant arrays using the IDPF_STAT macro, with every element
- * of the array using the same _type for calculating the sizeof_stat and
- * stat_offset.
- *
- * The @sizeof_stat is expected to be sizeof(u8), sizeof(u16), sizeof(u32) or
- * sizeof(u64). Other sizes are not expected and will produce a WARN_ONCE from
- * the idpf_add_ethtool_stat() helper function.
- *
- * The @stat_string is interpreted as a format string, allowing formatted
- * values to be inserted while looping over multiple structures for a given
- * statistics array. Thus, every statistic string in an array should have the
- * same type and number of format specifiers, to be formatted by variadic
- * arguments to the idpf_add_stat_string() helper function.
- */
-struct idpf_stats {
-	char stat_string[ETH_GSTRING_LEN];
-	int sizeof_stat;
-	int stat_offset;
-};
-
-/* Helper macro to define an idpf_stat structure with proper size and type.
- * Use this when defining constant statistics arrays. Note that @_type expects
- * only a type name and is used multiple times.
- */
-#define IDPF_STAT(_type, _name, _stat) { \
-	.stat_string = _name, \
-	.sizeof_stat = sizeof_field(_type, _stat), \
-	.stat_offset = offsetof(_type, _stat) \
-}
-
-/* Helper macros for defining some statistics related to queues */
-#define IDPF_RX_QUEUE_STAT(_name, _stat) \
-	IDPF_STAT(struct idpf_rx_queue, _name, _stat)
-#define IDPF_TX_QUEUE_STAT(_name, _stat) \
-	IDPF_STAT(struct idpf_tx_queue, _name, _stat)
-
-/* Stats associated with a Tx queue */
-static const struct idpf_stats idpf_gstrings_tx_queue_stats[] = {
-	IDPF_TX_QUEUE_STAT("pkts", q_stats.packets),
-	IDPF_TX_QUEUE_STAT("bytes", q_stats.bytes),
-	IDPF_TX_QUEUE_STAT("lso_pkts", q_stats.lso_pkts),
-};
-
-/* Stats associated with an Rx queue */
-static const struct idpf_stats idpf_gstrings_rx_queue_stats[] = {
-	IDPF_RX_QUEUE_STAT("pkts", q_stats.packets),
-	IDPF_RX_QUEUE_STAT("bytes", q_stats.bytes),
-	IDPF_RX_QUEUE_STAT("rx_gro_hw_pkts", q_stats.rsc_pkts),
-};
-
-#define IDPF_TX_QUEUE_STATS_LEN		ARRAY_SIZE(idpf_gstrings_tx_queue_stats)
-#define IDPF_RX_QUEUE_STATS_LEN		ARRAY_SIZE(idpf_gstrings_rx_queue_stats)
-
-#define IDPF_PORT_STAT(_name, _stat) \
-	IDPF_STAT(struct idpf_vport,  _name, _stat)
-
-static const struct idpf_stats idpf_gstrings_port_stats[] = {
-	IDPF_PORT_STAT("rx-csum_errors", port_stats.rx_hw_csum_err),
-	IDPF_PORT_STAT("rx-hsplit", port_stats.rx_hsplit),
-	IDPF_PORT_STAT("rx-hsplit_hbo", port_stats.rx_hsplit_hbo),
-	IDPF_PORT_STAT("rx-bad_descs", port_stats.rx_bad_descs),
-	IDPF_PORT_STAT("tx-skb_drops", port_stats.tx_drops),
-	IDPF_PORT_STAT("tx-dma_map_errs", port_stats.tx_dma_map_errs),
-	IDPF_PORT_STAT("tx-linearized_pkts", port_stats.tx_linearize),
-	IDPF_PORT_STAT("tx-busy_events", port_stats.tx_busy),
-	IDPF_PORT_STAT("rx-unicast_pkts", port_stats.vport_stats.rx_unicast),
-	IDPF_PORT_STAT("rx-multicast_pkts", port_stats.vport_stats.rx_multicast),
-	IDPF_PORT_STAT("rx-broadcast_pkts", port_stats.vport_stats.rx_broadcast),
-	IDPF_PORT_STAT("rx-unknown_protocol", port_stats.vport_stats.rx_unknown_protocol),
-	IDPF_PORT_STAT("tx-unicast_pkts", port_stats.vport_stats.tx_unicast),
-	IDPF_PORT_STAT("tx-multicast_pkts", port_stats.vport_stats.tx_multicast),
-	IDPF_PORT_STAT("tx-broadcast_pkts", port_stats.vport_stats.tx_broadcast),
+static const char * const idpf_gstrings_port_stats[] = {
+	"rx_bytes",
+	"rx_unicast",
+	"rx_multicast",
+	"rx_broadcast",
+	"rx_discards",
+	"rx_errors",
+	"rx_unknown_protocol",
+	"tx_bytes",
+	"tx_unicast",
+	"tx_multicast",
+	"tx_broadcast",
+	"tx_discards",
+	"tx_errors",
+	"rx_invalid_frame_length",
+	"rx_overflow_drop",
 };
+static_assert(ARRAY_SIZE(idpf_gstrings_port_stats) ==
+	      sizeof_field(struct virtchnl2_vport_stats, counters) /
+	      sizeof(__le64));
 
 #define IDPF_PORT_STATS_LEN ARRAY_SIZE(idpf_gstrings_port_stats)
 
-/**
- * __idpf_add_qstat_strings - copy stat strings into ethtool buffer
- * @p: ethtool supplied buffer
- * @stats: stat definitions array
- * @size: size of the stats array
- * @type: stat type
- * @idx: stat index
- *
- * Format and copy the strings described by stats into the buffer pointed at
- * by p.
- */
-static void __idpf_add_qstat_strings(u8 **p, const struct idpf_stats *stats,
-				     const unsigned int size, const char *type,
-				     unsigned int idx)
-{
-	unsigned int i;
-
-	for (i = 0; i < size; i++)
-		ethtool_sprintf(p, "%s_q-%u_%s",
-				type, idx, stats[i].stat_string);
-}
-
-/**
- * idpf_add_qstat_strings - Copy queue stat strings into ethtool buffer
- * @p: ethtool supplied buffer
- * @stats: stat definitions array
- * @type: stat type
- * @idx: stat idx
- *
- * Format and copy the strings described by the const static stats value into
- * the buffer pointed at by p.
- *
- * The parameter @stats is evaluated twice, so parameters with side effects
- * should be avoided. Additionally, stats must be an array such that
- * ARRAY_SIZE can be called on it.
- */
-#define idpf_add_qstat_strings(p, stats, type, idx) \
-	__idpf_add_qstat_strings(p, stats, ARRAY_SIZE(stats), type, idx)
-
 /**
  * idpf_add_stat_strings - Copy port stat strings into ethtool buffer
  * @p: ethtool buffer
- * @stats: struct to copy from
- * @size: size of stats array to copy from
  */
-static void idpf_add_stat_strings(u8 **p, const struct idpf_stats *stats,
-				  const unsigned int size)
+static void idpf_add_stat_strings(u8 **p)
 {
-	unsigned int i;
-
-	for (i = 0; i < size; i++)
-		ethtool_puts(p, stats[i].stat_string);
-}
-
-/**
- * idpf_get_stat_strings - Get stat strings
- * @netdev: network interface device structure
- * @data: buffer for string data
- *
- * Builds the statistics string table
- */
-static void idpf_get_stat_strings(struct net_device *netdev, u8 *data)
-{
-	struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_vport_config *vport_config;
-	unsigned int i;
-
-	idpf_add_stat_strings(&data, idpf_gstrings_port_stats,
-			      IDPF_PORT_STATS_LEN);
-
-	vport_config = np->adapter->vport_config[np->vport_idx];
-	/* It's critical that we always report a constant number of strings and
-	 * that the strings are reported in the same order regardless of how
-	 * many queues are actually in use.
-	 */
-	for (i = 0; i < vport_config->max_q.max_txq; i++)
-		idpf_add_qstat_strings(&data, idpf_gstrings_tx_queue_stats,
-				       "tx", i);
-
-	for (i = 0; i < vport_config->max_q.max_rxq; i++)
-		idpf_add_qstat_strings(&data, idpf_gstrings_rx_queue_stats,
-				       "rx", i);
+	for (u32 i = 0; i < IDPF_PORT_STATS_LEN; i++)
+		ethtool_puts(p, idpf_gstrings_port_stats[i]);
 }
 
 /**
@@ -579,7 +446,8 @@ static void idpf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
 {
 	switch (sset) {
 	case ETH_SS_STATS:
-		idpf_get_stat_strings(netdev, data);
+		idpf_add_stat_strings(&data);
+		libeth_ethtool_get_strings(netdev, sset, data);
 		break;
 	default:
 		break;
@@ -595,146 +463,15 @@ static void idpf_get_strings(struct net_device *netdev, u32 sset, u8 *data)
  */
 static int idpf_get_sset_count(struct net_device *netdev, int sset)
 {
-	struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_vport_config *vport_config;
-	u16 max_txq, max_rxq;
+	u32 count;
 
 	if (sset != ETH_SS_STATS)
 		return -EINVAL;
 
-	vport_config = np->adapter->vport_config[np->vport_idx];
-	/* This size reported back here *must* be constant throughout the
-	 * lifecycle of the netdevice, i.e. we must report the maximum length
-	 * even for queues that don't technically exist.  This is due to the
-	 * fact that this userspace API uses three separate ioctl calls to get
-	 * stats data but has no way to communicate back to userspace when that
-	 * size has changed, which can typically happen as a result of changing
-	 * number of queues. If the number/order of stats change in the middle
-	 * of this call chain it will lead to userspace crashing/accessing bad
-	 * data through buffer under/overflow.
-	 */
-	max_txq = vport_config->max_q.max_txq;
-	max_rxq = vport_config->max_q.max_rxq;
-
-	return IDPF_PORT_STATS_LEN + (IDPF_TX_QUEUE_STATS_LEN * max_txq) +
-	       (IDPF_RX_QUEUE_STATS_LEN * max_rxq);
-}
-
-/**
- * idpf_add_one_ethtool_stat - copy the stat into the supplied buffer
- * @data: location to store the stat value
- * @pstat: old stat pointer to copy from
- * @stat: the stat definition
- *
- * Copies the stat data defined by the pointer and stat structure pair into
- * the memory supplied as data. If the pointer is null, data will be zero'd.
- */
-static void idpf_add_one_ethtool_stat(u64 *data, const void *pstat,
-				      const struct idpf_stats *stat)
-{
-	char *p;
-
-	if (!pstat) {
-		/* Ensure that the ethtool data buffer is zero'd for any stats
-		 * which don't have a valid pointer.
-		 */
-		*data = 0;
-		return;
-	}
+	count = IDPF_PORT_STATS_LEN;
+	count += libeth_ethtool_get_sset_count(netdev, sset);
 
-	p = (char *)pstat + stat->stat_offset;
-	switch (stat->sizeof_stat) {
-	case sizeof(u64):
-		*data = *((u64 *)p);
-		break;
-	case sizeof(u32):
-		*data = *((u32 *)p);
-		break;
-	case sizeof(u16):
-		*data = *((u16 *)p);
-		break;
-	case sizeof(u8):
-		*data = *((u8 *)p);
-		break;
-	default:
-		WARN_ONCE(1, "unexpected stat size for %s",
-			  stat->stat_string);
-		*data = 0;
-	}
-}
-
-/**
- * idpf_add_queue_stats - copy queue statistics into supplied buffer
- * @data: ethtool stats buffer
- * @q: the queue to copy
- * @type: type of the queue
- *
- * Queue statistics must be copied while protected by u64_stats_fetch_begin,
- * so we can't directly use idpf_add_ethtool_stats. Assumes that queue stats
- * are defined in idpf_gstrings_queue_stats. If the queue pointer is null,
- * zero out the queue stat values and update the data pointer. Otherwise
- * safely copy the stats from the queue into the supplied buffer and update
- * the data pointer when finished.
- *
- * This function expects to be called while under rcu_read_lock().
- */
-static void idpf_add_queue_stats(u64 **data, const void *q,
-				 enum virtchnl2_queue_type type)
-{
-	const struct u64_stats_sync *stats_sync;
-	const struct idpf_stats *stats;
-	unsigned int start;
-	unsigned int size;
-	unsigned int i;
-
-	if (type == VIRTCHNL2_QUEUE_TYPE_RX) {
-		size = IDPF_RX_QUEUE_STATS_LEN;
-		stats = idpf_gstrings_rx_queue_stats;
-		stats_sync = &((const struct idpf_rx_queue *)q)->stats_sync;
-	} else {
-		size = IDPF_TX_QUEUE_STATS_LEN;
-		stats = idpf_gstrings_tx_queue_stats;
-		stats_sync = &((const struct idpf_tx_queue *)q)->stats_sync;
-	}
-
-	/* To avoid invalid statistics values, ensure that we keep retrying
-	 * the copy until we get a consistent value according to
-	 * u64_stats_fetch_retry.
-	 */
-	do {
-		start = u64_stats_fetch_begin(stats_sync);
-		for (i = 0; i < size; i++)
-			idpf_add_one_ethtool_stat(&(*data)[i], q, &stats[i]);
-	} while (u64_stats_fetch_retry(stats_sync, start));
-
-	/* Once we successfully copy the stats in, update the data pointer */
-	*data += size;
-}
-
-/**
- * idpf_add_empty_queue_stats - Add stats for a non-existent queue
- * @data: pointer to data buffer
- * @qtype: type of data queue
- *
- * We must report a constant length of stats back to userspace regardless of
- * how many queues are actually in use because stats collection happens over
- * three separate ioctls and there's no way to notify userspace the size
- * changed between those calls. This adds empty to data to the stats since we
- * don't have a real queue to refer to for this stats slot.
- */
-static void idpf_add_empty_queue_stats(u64 **data, u16 qtype)
-{
-	unsigned int i;
-	int stats_len;
-
-	if (qtype == VIRTCHNL2_QUEUE_TYPE_RX)
-		stats_len = IDPF_RX_QUEUE_STATS_LEN;
-	else
-		stats_len = IDPF_TX_QUEUE_STATS_LEN;
-
-	for (i = 0; i < stats_len; i++)
-		(*data)[i] = 0;
-	*data += stats_len;
+	return count;
 }
 
 /**
@@ -744,116 +481,15 @@ static void idpf_add_empty_queue_stats(u64 **data, u16 qtype)
  */
 static void idpf_add_port_stats(struct idpf_vport *vport, u64 **data)
 {
-	unsigned int size = IDPF_PORT_STATS_LEN;
-	unsigned int start;
-	unsigned int i;
-
-	do {
-		start = u64_stats_fetch_begin(&vport->port_stats.stats_sync);
-		for (i = 0; i < size; i++)
-			idpf_add_one_ethtool_stat(&(*data)[i], vport,
-						  &idpf_gstrings_port_stats[i]);
-	} while (u64_stats_fetch_retry(&vport->port_stats.stats_sync, start));
-
-	*data += size;
-}
+	u64 *stats = *data;
 
-/**
- * idpf_collect_queue_stats - accumulate various per queue stats
- * into port level stats
- * @vport: pointer to vport struct
- **/
-static void idpf_collect_queue_stats(struct idpf_vport *vport)
-{
-	struct idpf_port_stats *pstats = &vport->port_stats;
-	int i, j;
+	memcpy(stats, &vport->vport_stats.counters,
+	       sizeof(vport->vport_stats.counters));
 
-	/* zero out port stats since they're actually tracked in per
-	 * queue stats; this is only for reporting
-	 */
-	u64_stats_update_begin(&pstats->stats_sync);
-	u64_stats_set(&pstats->rx_hw_csum_err, 0);
-	u64_stats_set(&pstats->rx_hsplit, 0);
-	u64_stats_set(&pstats->rx_hsplit_hbo, 0);
-	u64_stats_set(&pstats->rx_bad_descs, 0);
-	u64_stats_set(&pstats->tx_linearize, 0);
-	u64_stats_set(&pstats->tx_busy, 0);
-	u64_stats_set(&pstats->tx_drops, 0);
-	u64_stats_set(&pstats->tx_dma_map_errs, 0);
-	u64_stats_update_end(&pstats->stats_sync);
-
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rxq_grp = &vport->rxq_grps[i];
-		u16 num_rxq;
-
-		if (idpf_is_queue_model_split(vport->rxq_model))
-			num_rxq = rxq_grp->splitq.num_rxq_sets;
-		else
-			num_rxq = rxq_grp->singleq.num_rxq;
-
-		for (j = 0; j < num_rxq; j++) {
-			u64 hw_csum_err, hsplit, hsplit_hbo, bad_descs;
-			struct idpf_rx_queue_stats *stats;
-			struct idpf_rx_queue *rxq;
-			unsigned int start;
-
-			if (idpf_is_queue_model_split(vport->rxq_model))
-				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
-			else
-				rxq = rxq_grp->singleq.rxqs[j];
-
-			if (!rxq)
-				continue;
-
-			do {
-				start = u64_stats_fetch_begin(&rxq->stats_sync);
-
-				stats = &rxq->q_stats;
-				hw_csum_err = u64_stats_read(&stats->hw_csum_err);
-				hsplit = u64_stats_read(&stats->hsplit_pkts);
-				hsplit_hbo = u64_stats_read(&stats->hsplit_buf_ovf);
-				bad_descs = u64_stats_read(&stats->bad_descs);
-			} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
-
-			u64_stats_update_begin(&pstats->stats_sync);
-			u64_stats_add(&pstats->rx_hw_csum_err, hw_csum_err);
-			u64_stats_add(&pstats->rx_hsplit, hsplit);
-			u64_stats_add(&pstats->rx_hsplit_hbo, hsplit_hbo);
-			u64_stats_add(&pstats->rx_bad_descs, bad_descs);
-			u64_stats_update_end(&pstats->stats_sync);
-		}
-	}
+	for (u32 i = 0; i < IDPF_PORT_STATS_LEN; i++)
+		le64_to_cpus(&stats[i]);
 
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
-
-		for (j = 0; j < txq_grp->num_txq; j++) {
-			u64 linearize, qbusy, skb_drops, dma_map_errs;
-			struct idpf_tx_queue *txq = txq_grp->txqs[j];
-			struct idpf_tx_queue_stats *stats;
-			unsigned int start;
-
-			if (!txq)
-				continue;
-
-			do {
-				start = u64_stats_fetch_begin(&txq->stats_sync);
-
-				stats = &txq->q_stats;
-				linearize = u64_stats_read(&stats->linearize);
-				qbusy = u64_stats_read(&stats->q_busy);
-				skb_drops = u64_stats_read(&stats->skb_drops);
-				dma_map_errs = u64_stats_read(&stats->dma_map_errs);
-			} while (u64_stats_fetch_retry(&txq->stats_sync, start));
-
-			u64_stats_update_begin(&pstats->stats_sync);
-			u64_stats_add(&pstats->tx_linearize, linearize);
-			u64_stats_add(&pstats->tx_busy, qbusy);
-			u64_stats_add(&pstats->tx_drops, skb_drops);
-			u64_stats_add(&pstats->tx_dma_map_errs, dma_map_errs);
-			u64_stats_update_end(&pstats->stats_sync);
-		}
-	}
+	*data += IDPF_PORT_STATS_LEN;
 }
 
 /**
@@ -869,12 +505,7 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 				   u64 *data)
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
-	struct idpf_vport_config *vport_config;
 	struct idpf_vport *vport;
-	unsigned int total = 0;
-	unsigned int i, j;
-	bool is_splitq;
-	u16 qtype;
 
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
@@ -887,63 +518,8 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 
 	rcu_read_lock();
 
-	idpf_collect_queue_stats(vport);
 	idpf_add_port_stats(vport, &data);
-
-	for (i = 0; i < vport->num_txq_grp; i++) {
-		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
-
-		qtype = VIRTCHNL2_QUEUE_TYPE_TX;
-
-		for (j = 0; j < txq_grp->num_txq; j++, total++) {
-			struct idpf_tx_queue *txq = txq_grp->txqs[j];
-
-			if (!txq)
-				idpf_add_empty_queue_stats(&data, qtype);
-			else
-				idpf_add_queue_stats(&data, txq, qtype);
-		}
-	}
-
-	vport_config = vport->adapter->vport_config[vport->idx];
-	/* It is critical we provide a constant number of stats back to
-	 * userspace regardless of how many queues are actually in use because
-	 * there is no way to inform userspace the size has changed between
-	 * ioctl calls. This will fill in any missing stats with zero.
-	 */
-	for (; total < vport_config->max_q.max_txq; total++)
-		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_TX);
-	total = 0;
-
-	is_splitq = idpf_is_queue_model_split(vport->rxq_model);
-
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		struct idpf_rxq_group *rxq_grp = &vport->rxq_grps[i];
-		u16 num_rxq;
-
-		qtype = VIRTCHNL2_QUEUE_TYPE_RX;
-
-		if (is_splitq)
-			num_rxq = rxq_grp->splitq.num_rxq_sets;
-		else
-			num_rxq = rxq_grp->singleq.num_rxq;
-
-		for (j = 0; j < num_rxq; j++, total++) {
-			struct idpf_rx_queue *rxq;
-
-			if (is_splitq)
-				rxq = &rxq_grp->splitq.rxq_sets[j]->rxq;
-			else
-				rxq = rxq_grp->singleq.rxqs[j];
-			if (!rxq)
-				idpf_add_empty_queue_stats(&data, qtype);
-			else
-				idpf_add_queue_stats(&data, rxq, qtype);
-		}
-	}
-
-	for (; total < vport_config->max_q.max_rxq; total++)
-		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_RX);
+	libeth_ethtool_get_stats(netdev, stats, data);
 
 	rcu_read_unlock();
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 0b6c8fd5bc90..fd4cea2763e2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
+#include <net/libeth/netdev.h>
+
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 
@@ -739,9 +741,9 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 		return idpf_init_mac_addr(vport, netdev);
 	}
 
-	netdev = alloc_etherdev_mqs(sizeof(struct idpf_netdev_priv),
-				    vport_config->max_q.max_txq,
-				    vport_config->max_q.max_rxq);
+	netdev = libeth_netdev_alloc(sizeof(struct idpf_netdev_priv),
+				     vport_config->max_q.max_rxq,
+				     vport_config->max_q.max_txq);
 	if (!netdev)
 		return -ENOMEM;
 
@@ -756,7 +758,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 
 	err = idpf_init_mac_addr(vport, netdev);
 	if (err) {
-		free_netdev(vport->netdev);
+		libeth_netdev_free(vport->netdev);
 		vport->netdev = NULL;
 
 		return err;
@@ -945,7 +947,7 @@ static void idpf_decfg_netdev(struct idpf_vport *vport)
 	vport->rx_ptype_lkup = NULL;
 
 	unregister_netdev(vport->netdev);
-	free_netdev(vport->netdev);
+	libeth_netdev_free(vport->netdev);
 	vport->netdev = NULL;
 
 	adapter->netdevs[vport->idx] = NULL;
@@ -1266,23 +1268,6 @@ static void idpf_restore_features(struct idpf_vport *vport)
 		idpf_restore_mac_filters(vport);
 }
 
-/**
- * idpf_set_real_num_queues - set number of queues for netdev
- * @vport: virtual port structure
- *
- * Returns 0 on success, negative on failure.
- */
-static int idpf_set_real_num_queues(struct idpf_vport *vport)
-{
-	int err;
-
-	err = netif_set_real_num_rx_queues(vport->netdev, vport->num_rxq);
-	if (err)
-		return err;
-
-	return netif_set_real_num_tx_queues(vport->netdev, vport->num_txq);
-}
-
 /**
  * idpf_up_complete - Complete interface up sequence
  * @vport: virtual port structure
@@ -1924,7 +1909,8 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	if (reset_cause == IDPF_SR_Q_CHANGE)
 		idpf_vport_alloc_vec_indexes(vport);
 
-	err = idpf_set_real_num_queues(vport);
+	err = libeth_set_real_num_queues(vport->netdev, vport->num_rxq,
+					 vport->num_txq);
 	if (err)
 		goto err_open;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index dfd7cf1d9aa0..c6ce819b3528 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -337,10 +337,6 @@ static void idpf_tx_singleq_build_ctx_desc(struct idpf_tx_queue *txq,
 		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_TSO_LEN_M,
 				  offload->tso_len);
 		qw1 |= FIELD_PREP(IDPF_TXD_CTX_QW1_MSS_M, offload->mss);
-
-		u64_stats_update_begin(&txq->stats_sync);
-		u64_stats_inc(&txq->q_stats.lso_pkts);
-		u64_stats_update_end(&txq->stats_sync);
 	}
 
 	desc->qw0.tunneling_params = cpu_to_le32(offload->cd_tunneling);
@@ -361,6 +357,7 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 				  struct idpf_tx_queue *tx_q)
 {
 	struct idpf_tx_offload_params offload = { };
+	struct libeth_sq_xmit_stats ss = { };
 	struct idpf_tx_buf *first;
 	unsigned int count;
 	__be16 protocol;
@@ -374,10 +371,7 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
 				      IDPF_TX_DESCS_FOR_CTX)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
-
-		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_inc(&tx_q->q_stats.q_busy);
-		u64_stats_update_end(&tx_q->stats_sync);
+		libeth_stats_inc_one(&tx_q->stats, busy);
 
 		return NETDEV_TX_BUSY;
 	}
@@ -388,7 +382,7 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 	else if (protocol == htons(ETH_P_IPV6))
 		offload.tx_flags |= IDPF_TX_FLAGS_IPV6;
 
-	tso = idpf_tso(skb, &offload);
+	tso = idpf_tso(skb, &offload, &ss);
 	if (tso < 0)
 		goto out_drop;
 
@@ -412,6 +406,10 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
 	}
 	idpf_tx_singleq_map(tx_q, first, &offload);
 
+	libeth_stats_add_frags(&ss, count);
+	libeth_sq_xmit_stats_csum(&ss, skb);
+	libeth_sq_xmit_stats_add(&tx_q->stats, &ss);
+
 	return NETDEV_TX_OK;
 
 out_drop:
@@ -508,20 +506,18 @@ static bool idpf_tx_singleq_clean(struct idpf_tx_queue *tx_q, int napi_budget,
 	tx_q->next_to_clean = ntc;
 
 	*cleaned += ss.packets;
-
-	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_add(&tx_q->q_stats.packets, ss.packets);
-	u64_stats_add(&tx_q->q_stats.bytes, ss.bytes);
-	u64_stats_update_end(&tx_q->stats_sync);
+	libeth_sq_napi_stats_add(&tx_q->stats, &ss);
 
 	np = netdev_priv(tx_q->netdev);
 	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 
 	dont_wake = np->state != __IDPF_VPORT_UP ||
 		    !netif_carrier_ok(tx_q->netdev);
-	__netif_txq_completed_wake(nq, ss.packets, ss.bytes,
-				   IDPF_DESC_UNUSED(tx_q), IDPF_TX_WAKE_THRESH,
-				   dont_wake);
+	if (!__netif_txq_completed_wake(nq, ss.packets, ss.bytes,
+					IDPF_DESC_UNUSED(tx_q),
+					IDPF_TX_WAKE_THRESH,
+					dont_wake))
+		libeth_stats_inc_one(&tx_q->stats, wake);
 
 	return !!budget;
 }
@@ -590,23 +586,25 @@ static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
  * @skb: skb currently being received and modified
  * @csum_bits: checksum bits from descriptor
  * @decoded: the packet type decoded by hardware
+ * @rs: RQ polling onstack stats
  *
  * skb->protocol must be set before this function is called
  */
 static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 				 struct sk_buff *skb,
 				 struct idpf_rx_csum_decoded csum_bits,
-				 struct libeth_rx_pt decoded)
+				 struct libeth_rx_pt decoded,
+				 struct libeth_rq_napi_stats *rs)
 {
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
 	if (!libeth_rx_pt_has_checksum(rxq->netdev, decoded))
-		return;
+		goto none;
 
 	/* check if HW has decoded the packet and checksum */
 	if (unlikely(!csum_bits.l3l4p))
-		return;
+		goto none;
 
 	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
 	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
@@ -619,7 +617,7 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 	 * headers as indicated by setting IPV6EXADD bit
 	 */
 	if (unlikely(ipv6 && csum_bits.ipv6exadd))
-		return;
+		goto none;
 
 	/* check for L4 errors and handle packets that were not able to be
 	 * checksummed due to arrival speed
@@ -634,7 +632,7 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 	 * speed, in this case the stack can compute the csum.
 	 */
 	if (unlikely(csum_bits.pprs))
-		return;
+		goto none;
 
 	/* If there is an outer header present that might contain a checksum
 	 * we need to bump the checksum level by 1 to reflect the fact that
@@ -644,12 +642,16 @@ static void idpf_rx_singleq_csum(struct idpf_rx_queue *rxq,
 		skb->csum_level = 1;
 
 	skb->ip_summed = CHECKSUM_UNNECESSARY;
+	rs->csum_unnecessary++;
+
+	return;
+
+none:
+	libeth_stats_inc_one(&rxq->stats, csum_none);
 	return;
 
 checksum_fail:
-	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_inc(&rxq->q_stats.hw_csum_err);
-	u64_stats_update_end(&rxq->stats_sync);
+	libeth_stats_inc_one(&rxq->stats, csum_bad);
 }
 
 /**
@@ -786,6 +788,7 @@ static void idpf_rx_singleq_flex_hash(struct idpf_rx_queue *rx_q,
  * @skb: pointer to current skb being populated
  * @rx_desc: descriptor for skb
  * @ptype: packet type
+ * @rs: RQ polling onstack stats
  *
  * This function checks the ring, descriptor, and packet information in
  * order to populate the hash, checksum, VLAN, protocol, and
@@ -795,7 +798,8 @@ static void
 idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 				   struct sk_buff *skb,
 				   const union virtchnl2_rx_desc *rx_desc,
-				   u16 ptype)
+				   u16 ptype,
+				   struct libeth_rq_napi_stats *rs)
 {
 	struct libeth_rx_pt decoded = rx_q->rx_ptype_lkup[ptype];
 	struct idpf_rx_csum_decoded csum_bits;
@@ -812,7 +816,7 @@ idpf_rx_singleq_process_skb_fields(struct idpf_rx_queue *rx_q,
 		csum_bits = idpf_rx_singleq_flex_csum(rx_desc);
 	}
 
-	idpf_rx_singleq_csum(rx_q, skb, csum_bits, decoded);
+	idpf_rx_singleq_csum(rx_q, skb, csum_bits, decoded, rs);
 	skb_record_rx_queue(skb, rx_q->idx);
 }
 
@@ -958,14 +962,14 @@ idpf_rx_singleq_extract_fields(const struct idpf_rx_queue *rx_q,
  */
 static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 {
-	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
+	struct libeth_rq_napi_stats rs = { };
 	struct sk_buff *skb = rx_q->skb;
 	u16 ntc = rx_q->next_to_clean;
 	u16 cleaned_count = 0;
 	bool failure = false;
 
 	/* Process Rx packets bounded by budget */
-	while (likely(total_rx_pkts < (unsigned int)budget)) {
+	while (likely(rs.packets < budget)) {
 		struct idpf_rx_extracted fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
@@ -1030,18 +1034,19 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 		}
 
 		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		rs.bytes += skb->len;
 
 		/* protocol */
 		idpf_rx_singleq_process_skb_fields(rx_q, skb,
-						   rx_desc, fields.rx_ptype);
+						   rx_desc, fields.rx_ptype,
+						   &rs);
 
 		/* send completed skb up the stack */
 		napi_gro_receive(rx_q->pp->p.napi, skb);
 		skb = NULL;
 
 		/* update budget accounting */
-		total_rx_pkts++;
+		rs.packets++;
 	}
 
 	rx_q->skb = skb;
@@ -1052,13 +1057,10 @@ static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
 	if (cleaned_count)
 		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
 
-	u64_stats_update_begin(&rx_q->stats_sync);
-	u64_stats_add(&rx_q->q_stats.packets, total_rx_pkts);
-	u64_stats_add(&rx_q->q_stats.bytes, total_rx_bytes);
-	u64_stats_update_end(&rx_q->stats_sync);
+	libeth_rq_napi_stats_add(&rx_q->stats, &rs);
 
 	/* guarantee a trip back through this routine if there was a failure */
-	return failure ? budget : (int)total_rx_pkts;
+	return failure ? budget : rs.packets;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 7af4ec83fd0a..5a4455f72efc 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -132,6 +132,8 @@ static void idpf_tx_buf_rel_all(struct idpf_tx_queue *txq)
 static void idpf_tx_desc_rel(struct idpf_tx_queue *txq)
 {
 	idpf_tx_buf_rel_all(txq);
+
+	libeth_sq_stats_deinit(txq->netdev, txq->idx);
 	netdev_tx_reset_subqueue(txq->netdev, txq->idx);
 
 	if (!txq->desc_ring)
@@ -265,6 +267,8 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
 	tx_q->next_to_clean = 0;
 	idpf_queue_set(GEN_CHK, tx_q);
 
+	libeth_sq_stats_init(vport->netdev, &tx_q->stats, tx_q->idx);
+
 	return 0;
 
 err_alloc:
@@ -480,6 +484,8 @@ static void idpf_rx_desc_rel(struct idpf_rx_queue *rxq, struct device *dev,
 	if (!idpf_is_queue_model_split(model))
 		idpf_rx_buf_rel_all(rxq);
 
+	libeth_rq_stats_deinit(rxq->netdev, rxq->idx);
+
 	rxq->next_to_alloc = 0;
 	rxq->next_to_clean = 0;
 	rxq->next_to_use = 0;
@@ -880,6 +886,8 @@ static int idpf_rx_desc_alloc(const struct idpf_vport *vport,
 	rxq->next_to_use = 0;
 	idpf_queue_set(GEN_CHK, rxq);
 
+	libeth_rq_stats_init(vport->netdev, &rxq->stats, rxq->idx);
+
 	return 0;
 }
 
@@ -1663,7 +1671,7 @@ static void idpf_tx_handle_sw_marker(struct idpf_tx_queue *tx_q)
  */
 static void idpf_tx_clean_stashed_bufs(struct idpf_tx_queue *txq,
 				       u16 compl_tag,
-				       struct idpf_cleaned_stats *cleaned,
+				       struct libeth_sq_napi_stats *cleaned,
 				       int budget)
 {
 	struct idpf_tx_stash *stash;
@@ -1764,7 +1772,7 @@ do {								\
  */
 static bool idpf_tx_splitq_clean(struct idpf_tx_queue *tx_q, u16 end,
 				 int napi_budget,
-				 struct idpf_cleaned_stats *cleaned,
+				 struct libeth_sq_napi_stats *cleaned,
 				 bool descs_only)
 {
 	union idpf_tx_flex_desc *next_pending_desc = NULL;
@@ -1856,7 +1864,7 @@ do {							\
  * this completion tag.
  */
 static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
-				   struct idpf_cleaned_stats *cleaned,
+				   struct libeth_sq_napi_stats *cleaned,
 				   int budget)
 {
 	u16 idx = compl_tag & txq->compl_tag_bufid_m;
@@ -1934,7 +1942,7 @@ static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
  */
 static void idpf_tx_handle_rs_completion(struct idpf_tx_queue *txq,
 					 struct idpf_splitq_tx_compl_desc *desc,
-					 struct idpf_cleaned_stats *cleaned,
+					 struct libeth_sq_napi_stats *cleaned,
 					 int budget)
 {
 	u16 compl_tag;
@@ -1978,7 +1986,7 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 	ntc -= complq->desc_count;
 
 	do {
-		struct idpf_cleaned_stats cleaned_stats = { };
+		struct libeth_sq_napi_stats cleaned_stats = { };
 		struct idpf_tx_queue *tx_q;
 		int rel_tx_qid;
 		u16 hw_head;
@@ -2024,13 +2032,10 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 			goto fetch_next_desc;
 		}
 
-		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_add(&tx_q->q_stats.packets, cleaned_stats.packets);
-		u64_stats_add(&tx_q->q_stats.bytes, cleaned_stats.bytes);
+		libeth_sq_napi_stats_add(&tx_q->stats, &cleaned_stats);
 		tx_q->cleaned_pkts += cleaned_stats.packets;
 		tx_q->cleaned_bytes += cleaned_stats.bytes;
 		complq->num_completions++;
-		u64_stats_update_end(&tx_q->stats_sync);
 
 fetch_next_desc:
 		tx_desc++;
@@ -2073,9 +2078,12 @@ static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
 			    np->state != __IDPF_VPORT_UP ||
 			    !netif_carrier_ok(tx_q->netdev);
 		/* Check if the TXQ needs to and can be restarted */
-		__netif_txq_completed_wake(nq, tx_q->cleaned_pkts, tx_q->cleaned_bytes,
-					   IDPF_DESC_UNUSED(tx_q), IDPF_TX_WAKE_THRESH,
-					   dont_wake);
+		if (!__netif_txq_completed_wake(nq, tx_q->cleaned_pkts,
+						tx_q->cleaned_bytes,
+						IDPF_DESC_UNUSED(tx_q),
+						IDPF_TX_WAKE_THRESH,
+						dont_wake))
+			libeth_stats_inc_one(&tx_q->stats, wake);
 
 		/* Reset cleaned stats for the next time this queue is
 		 * cleaned
@@ -2158,11 +2166,8 @@ static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
 
 splitq_stop:
 	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
-
 out:
-	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_inc(&tx_q->q_stats.q_busy);
-	u64_stats_update_end(&tx_q->stats_sync);
+	libeth_stats_inc_one(&tx_q->stats, stop);
 
 	return -EBUSY;
 }
@@ -2185,11 +2190,8 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
 	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
 	tx_q->next_to_use = val;
 
-	if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED)) {
-		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_inc(&tx_q->q_stats.q_busy);
-		u64_stats_update_end(&tx_q->stats_sync);
-	}
+	if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED))
+		libeth_stats_inc_one(&tx_q->stats, stop);
 
 	/* Force memory writes to complete before letting h/w
 	 * know there are new descriptors to fetch.  (Only
@@ -2242,9 +2244,7 @@ unsigned int idpf_tx_desc_count_required(struct idpf_tx_queue *txq,
 			return 0;
 
 		count = idpf_size_to_txd_count(skb->len);
-		u64_stats_update_begin(&txq->stats_sync);
-		u64_stats_inc(&txq->q_stats.linearize);
-		u64_stats_update_end(&txq->stats_sync);
+		libeth_stats_inc_one(&txq->stats, linearized);
 	}
 
 	return count;
@@ -2266,9 +2266,7 @@ void idpf_tx_dma_map_error(struct idpf_tx_queue *txq, struct sk_buff *skb,
 		.ss	= &ss,
 	};
 
-	u64_stats_update_begin(&txq->stats_sync);
-	u64_stats_inc(&txq->q_stats.dma_map_errs);
-	u64_stats_update_end(&txq->stats_sync);
+	libeth_stats_inc_one(&txq->stats, dma_map_errs);
 
 	/* clear dma mappings for failed tx_buf map */
 	for (;;) {
@@ -2508,11 +2506,13 @@ static void idpf_tx_splitq_map(struct idpf_tx_queue *tx_q,
  * idpf_tso - computes mss and TSO length to prepare for TSO
  * @skb: pointer to skb
  * @off: pointer to struct that holds offload parameters
+ * @ss: SQ xmit onstack stats
  *
  * Returns error (negative) if TSO was requested but cannot be applied to the
  * given skb, 0 if TSO does not apply to the given skb, or 1 otherwise.
  */
-int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
+int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off,
+	     struct libeth_sq_xmit_stats *ss)
 {
 	const struct skb_shared_info *shinfo;
 	union {
@@ -2559,6 +2559,8 @@ int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
 		csum_replace_by_diff(&l4.tcp->check,
 				     (__force __wsum)htonl(paylen));
 		off->tso_hdr_len = __tcp_hdrlen(l4.tcp) + l4_start;
+
+		ss->tso++;
 		break;
 	case SKB_GSO_UDP_L4:
 		csum_replace_by_diff(&l4.udp->check,
@@ -2566,6 +2568,8 @@ int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
 		/* compute length of segmentation header */
 		off->tso_hdr_len = sizeof(struct udphdr) + l4_start;
 		l4.udp->len = htons(shinfo->gso_size + sizeof(struct udphdr));
+
+		ss->uso++;
 		break;
 	default:
 		return -EINVAL;
@@ -2577,6 +2581,9 @@ int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off)
 
 	off->tx_flags |= IDPF_TX_FLAGS_TSO;
 
+	ss->hw_gso_packets++;
+	ss->hw_gso_bytes += skb->len;
+
 	return 1;
 }
 
@@ -2715,10 +2722,7 @@ idpf_tx_splitq_get_ctx_desc(struct idpf_tx_queue *txq)
  */
 netdev_tx_t idpf_tx_drop_skb(struct idpf_tx_queue *tx_q, struct sk_buff *skb)
 {
-	u64_stats_update_begin(&tx_q->stats_sync);
-	u64_stats_inc(&tx_q->q_stats.skb_drops);
-	u64_stats_update_end(&tx_q->stats_sync);
-
+	libeth_stats_inc_one(&tx_q->stats, drops);
 	idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
 
 	dev_kfree_skb(skb);
@@ -2737,6 +2741,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 					struct idpf_tx_queue *tx_q)
 {
 	struct idpf_tx_splitq_params tx_params = { };
+	struct libeth_sq_xmit_stats ss = { };
 	struct idpf_tx_buf *first;
 	unsigned int count;
 	int tso;
@@ -2745,7 +2750,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	if (unlikely(!count))
 		return idpf_tx_drop_skb(tx_q, skb);
 
-	tso = idpf_tso(skb, &tx_params.offload);
+	tso = idpf_tso(skb, &tx_params.offload, &ss);
 	if (unlikely(tso < 0))
 		return idpf_tx_drop_skb(tx_q, skb);
 
@@ -2753,6 +2758,7 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 	count += (IDPF_TX_DESCS_PER_CACHE_LINE + tso);
 	if (idpf_tx_maybe_stop_splitq(tx_q, count)) {
 		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
+		libeth_stats_inc_one(&tx_q->stats, busy);
 
 		return NETDEV_TX_BUSY;
 	}
@@ -2772,10 +2778,6 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 				cpu_to_le16(tx_params.offload.mss &
 					    IDPF_TXD_FLEX_CTX_MSS_RT_M);
 		ctx_desc->tso.qw0.hdr_len = tx_params.offload.tso_hdr_len;
-
-		u64_stats_update_begin(&tx_q->stats_sync);
-		u64_stats_inc(&tx_q->q_stats.lso_pkts);
-		u64_stats_update_end(&tx_q->stats_sync);
 	}
 
 	/* record the location of the first descriptor for this packet */
@@ -2817,6 +2819,10 @@ static netdev_tx_t idpf_tx_splitq_frame(struct sk_buff *skb,
 
 	idpf_tx_splitq_map(tx_q, &tx_params, first);
 
+	libeth_stats_add_frags(&ss, count);
+	libeth_sq_xmit_stats_csum(&ss, skb);
+	libeth_sq_xmit_stats_add(&tx_q->stats, &ss);
+
 	return NETDEV_TX_OK;
 }
 
@@ -2885,41 +2891,44 @@ idpf_rx_hash(const struct idpf_rx_queue *rxq, struct sk_buff *skb,
  * @skb: pointer to current skb being populated
  * @csum_bits: checksum fields extracted from the descriptor
  * @decoded: Decoded Rx packet type related fields
+ * @rs: RQ polling onstack stats
  *
  * skb->protocol must be set before this function is called
  */
 static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 			 struct idpf_rx_csum_decoded csum_bits,
-			 struct libeth_rx_pt decoded)
+			 struct libeth_rx_pt decoded,
+			 struct libeth_rq_napi_stats *rs)
 {
 	bool ipv4, ipv6;
 
 	/* check if Rx checksum is enabled */
 	if (!libeth_rx_pt_has_checksum(rxq->netdev, decoded))
-		return;
+		goto none;
 
 	/* check if HW has decoded the packet and checksum */
 	if (unlikely(!csum_bits.l3l4p))
-		return;
+		goto none;
 
 	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
 	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
 
 	if (unlikely(ipv4 && (csum_bits.ipe || csum_bits.eipe)))
-		goto checksum_fail;
+		goto bad;
 
 	if (unlikely(ipv6 && csum_bits.ipv6exadd))
-		return;
+		goto none;
 
 	/* check for L4 errors and handle packets that were not able to be
 	 * checksummed
 	 */
 	if (unlikely(csum_bits.l4e))
-		goto checksum_fail;
+		goto bad;
 
 	if (csum_bits.raw_csum_inv ||
 	    decoded.inner_prot == LIBETH_RX_PT_INNER_SCTP) {
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
+		rs->csum_unnecessary++;
 		return;
 	}
 
@@ -2928,10 +2937,12 @@ static void idpf_rx_csum(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 
 	return;
 
-checksum_fail:
-	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_inc(&rxq->q_stats.hw_csum_err);
-	u64_stats_update_end(&rxq->stats_sync);
+none:
+	libeth_stats_inc_one(&rxq->stats, csum_none);
+	return;
+
+bad:
+	libeth_stats_inc_one(&rxq->stats, csum_bad);
 }
 
 /**
@@ -2973,6 +2984,7 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
  * @skb : pointer to current skb being populated
  * @rx_desc: Receive descriptor
  * @decoded: Decoded Rx packet type related fields
+ * @rs: RQ polling onstack stats
  *
  * Return 0 on success and error code on failure
  *
@@ -2981,7 +2993,8 @@ idpf_rx_splitq_extract_csum_bits(const struct virtchnl2_rx_flex_desc_adv_nic_3 *
  */
 static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 		       const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
-		       struct libeth_rx_pt decoded)
+		       struct libeth_rx_pt decoded,
+		       struct libeth_rq_napi_stats *rs)
 {
 	u16 rsc_segments, rsc_seg_len;
 	bool ipv4, ipv6;
@@ -3033,9 +3046,8 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 
 	tcp_gro_complete(skb);
 
-	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_inc(&rxq->q_stats.rsc_pkts);
-	u64_stats_update_end(&rxq->stats_sync);
+	rs->hw_gro_packets++;
+	rs->hw_gro_bytes += skb->len;
 
 	return 0;
 }
@@ -3045,6 +3057,7 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
  * @rxq: Rx descriptor ring packet is being transacted on
  * @skb: pointer to current skb being populated
  * @rx_desc: Receive descriptor
+ * @rs: RQ polling onstack stats
  *
  * This function checks the ring, descriptor, and packet information in
  * order to populate the hash, checksum, protocol, and
@@ -3052,7 +3065,8 @@ static int idpf_rx_rsc(struct idpf_rx_queue *rxq, struct sk_buff *skb,
  */
 static int
 idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
-			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
+			   const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
+			   struct libeth_rq_napi_stats *rs)
 {
 	struct idpf_rx_csum_decoded csum_bits;
 	struct libeth_rx_pt decoded;
@@ -3069,10 +3083,10 @@ idpf_rx_process_skb_fields(struct idpf_rx_queue *rxq, struct sk_buff *skb,
 
 	if (le16_get_bits(rx_desc->hdrlen_flags,
 			  VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M))
-		return idpf_rx_rsc(rxq, skb, rx_desc, decoded);
+		return idpf_rx_rsc(rxq, skb, rx_desc, decoded, rs);
 
 	csum_bits = idpf_rx_splitq_extract_csum_bits(rx_desc);
-	idpf_rx_csum(rxq, skb, csum_bits, decoded);
+	idpf_rx_csum(rxq, skb, csum_bits, decoded, rs);
 
 	skb_record_rx_queue(skb, rxq->idx);
 
@@ -3203,13 +3217,13 @@ static bool idpf_rx_splitq_is_eop(struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_de
  */
 static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 {
-	int total_rx_bytes = 0, total_rx_pkts = 0;
 	struct idpf_buf_queue *rx_bufq = NULL;
+	struct libeth_rq_napi_stats rs = { };
 	struct sk_buff *skb = rxq->skb;
 	u16 ntc = rxq->next_to_clean;
 
 	/* Process Rx packets bounded by budget */
-	while (likely(total_rx_pkts < budget)) {
+	while (likely(rs.packets < budget)) {
 		struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
 		struct libeth_fqe *hdr, *rx_buf = NULL;
 		struct idpf_sw_queue *refillq = NULL;
@@ -3239,9 +3253,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 				  rx_desc->rxdid_ucast);
 		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
 			IDPF_RX_BUMP_NTC(rxq, ntc);
-			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.bad_descs);
-			u64_stats_update_end(&rxq->stats_sync);
+			libeth_stats_inc_one(&rxq->stats, dma_errs);
 			continue;
 		}
 
@@ -3283,9 +3295,7 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
 			pkt_len -= hdr_len;
 
-			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.hsplit_buf_ovf);
-			u64_stats_update_end(&rxq->stats_sync);
+			libeth_stats_inc_one(&rxq->stats, hsplit_errs);
 		}
 
 		if (libeth_rx_sync_for_cpu(hdr, hdr_len)) {
@@ -3293,13 +3303,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 			if (!skb)
 				break;
 
-			u64_stats_update_begin(&rxq->stats_sync);
-			u64_stats_inc(&rxq->q_stats.hsplit_pkts);
-			u64_stats_update_end(&rxq->stats_sync);
+			rs.hsplit++;
 		}
 
 		hdr->page = NULL;
 
+		if (!pkt_len)
+			rs.hsplit_linear++;
+
 payload:
 		if (!libeth_rx_sync_for_cpu(rx_buf, pkt_len))
 			goto skip_data;
@@ -3330,10 +3341,11 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 		}
 
 		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		rs.bytes += skb->len;
 
 		/* protocol */
-		if (unlikely(idpf_rx_process_skb_fields(rxq, skb, rx_desc))) {
+		if (unlikely(idpf_rx_process_skb_fields(rxq, skb, rx_desc,
+							&rs))) {
 			dev_kfree_skb_any(skb);
 			skb = NULL;
 			continue;
@@ -3344,19 +3356,15 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 		skb = NULL;
 
 		/* update budget accounting */
-		total_rx_pkts++;
+		rs.packets++;
 	}
 
 	rxq->next_to_clean = ntc;
 
 	rxq->skb = skb;
-	u64_stats_update_begin(&rxq->stats_sync);
-	u64_stats_add(&rxq->q_stats.packets, total_rx_pkts);
-	u64_stats_add(&rxq->q_stats.bytes, total_rx_bytes);
-	u64_stats_update_end(&rxq->stats_sync);
+	libeth_rq_napi_stats_add(&rxq->stats, &rs);
 
-	/* guarantee a trip back through this routine if there was a failure */
-	return total_rx_pkts;
+	return rs.packets;
 }
 
 /**
@@ -3666,10 +3674,10 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 		unsigned int start;
 
 		do {
-			start = u64_stats_fetch_begin(&txq->stats_sync);
-			packets += u64_stats_read(&txq->q_stats.packets);
-			bytes += u64_stats_read(&txq->q_stats.bytes);
-		} while (u64_stats_fetch_retry(&txq->stats_sync, start));
+			start = u64_stats_fetch_begin(&txq->stats.syncp);
+			packets += u64_stats_read(&txq->stats.packets);
+			bytes += u64_stats_read(&txq->stats.bytes);
+		} while (u64_stats_fetch_retry(&txq->stats.syncp, start));
 	}
 
 	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->tx_dim,
@@ -3685,10 +3693,10 @@ static void idpf_net_dim(struct idpf_q_vector *q_vector)
 		unsigned int start;
 
 		do {
-			start = u64_stats_fetch_begin(&rxq->stats_sync);
-			packets += u64_stats_read(&rxq->q_stats.packets);
-			bytes += u64_stats_read(&rxq->q_stats.bytes);
-		} while (u64_stats_fetch_retry(&rxq->stats_sync, start));
+			start = u64_stats_fetch_begin(&rxq->stats.syncp);
+			packets += u64_stats_read(&rxq->stats.packets);
+			bytes += u64_stats_read(&rxq->stats.bytes);
+		} while (u64_stats_fetch_retry(&rxq->stats.syncp, start));
 	}
 
 	idpf_update_dim_sample(q_vector, &dim_sample, &q_vector->rx_dim,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..3fcc8ac70b74 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2292,47 +2292,44 @@ int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs)
  */
 int idpf_send_get_stats_msg(struct idpf_vport *vport)
 {
+	struct virtchnl2_vport_stats *stats_msg = &vport->vport_stats;
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct rtnl_link_stats64 *netstats = &np->netstats;
-	struct virtchnl2_vport_stats stats_msg = {};
 	struct idpf_vc_xn_params xn_params = {};
 	ssize_t reply_sz;
 
-
 	/* Don't send get_stats message if the link is down */
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return 0;
 
-	stats_msg.vport_id = cpu_to_le32(vport->vport_id);
+	stats_msg->vport_id = cpu_to_le32(vport->vport_id);
 
 	xn_params.vc_op = VIRTCHNL2_OP_GET_STATS;
-	xn_params.send_buf.iov_base = &stats_msg;
-	xn_params.send_buf.iov_len = sizeof(stats_msg);
+	xn_params.send_buf.iov_base = stats_msg;
+	xn_params.send_buf.iov_len = sizeof(*stats_msg);
 	xn_params.recv_buf = xn_params.send_buf;
 	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
 
 	reply_sz = idpf_vc_xn_exec(vport->adapter, &xn_params);
 	if (reply_sz < 0)
 		return reply_sz;
-	if (reply_sz < sizeof(stats_msg))
+	if (reply_sz < sizeof(*stats_msg))
 		return -EIO;
 
 	spin_lock_bh(&np->stats_lock);
 
-	netstats->rx_packets = le64_to_cpu(stats_msg.rx_unicast) +
-			       le64_to_cpu(stats_msg.rx_multicast) +
-			       le64_to_cpu(stats_msg.rx_broadcast);
-	netstats->tx_packets = le64_to_cpu(stats_msg.tx_unicast) +
-			       le64_to_cpu(stats_msg.tx_multicast) +
-			       le64_to_cpu(stats_msg.tx_broadcast);
-	netstats->rx_bytes = le64_to_cpu(stats_msg.rx_bytes);
-	netstats->tx_bytes = le64_to_cpu(stats_msg.tx_bytes);
-	netstats->rx_errors = le64_to_cpu(stats_msg.rx_errors);
-	netstats->tx_errors = le64_to_cpu(stats_msg.tx_errors);
-	netstats->rx_dropped = le64_to_cpu(stats_msg.rx_discards);
-	netstats->tx_dropped = le64_to_cpu(stats_msg.tx_discards);
-
-	vport->port_stats.vport_stats = stats_msg;
+	netstats->rx_packets = le64_to_cpu(stats_msg->rx_unicast) +
+			       le64_to_cpu(stats_msg->rx_multicast) +
+			       le64_to_cpu(stats_msg->rx_broadcast);
+	netstats->tx_packets = le64_to_cpu(stats_msg->tx_unicast) +
+			       le64_to_cpu(stats_msg->tx_multicast) +
+			       le64_to_cpu(stats_msg->tx_broadcast);
+	netstats->rx_bytes = le64_to_cpu(stats_msg->rx_bytes);
+	netstats->tx_bytes = le64_to_cpu(stats_msg->tx_bytes);
+	netstats->rx_errors = le64_to_cpu(stats_msg->rx_errors);
+	netstats->tx_errors = le64_to_cpu(stats_msg->tx_errors);
+	netstats->rx_dropped = le64_to_cpu(stats_msg->rx_discards);
+	netstats->tx_dropped = le64_to_cpu(stats_msg->tx_discards);
 
 	spin_unlock_bh(&np->stats_lock);
 
-- 
2.45.2

