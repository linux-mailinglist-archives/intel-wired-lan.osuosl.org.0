Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6DCB21190
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:20:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B80C61090;
	Mon, 11 Aug 2025 16:20:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NDhlXwm4b9q3; Mon, 11 Aug 2025 16:20:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26F9A61442
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754929246;
	bh=bWdPlZ9VsC9IiR477ZzyYbHnXeYr5z7PGoadNr1574I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xJV5m5ywnDS76p0AgPXy94MqFMFN5SzuVZh3SZB6xm+R00lbv3ma66oy3s1z21gc/
	 6HtXw4uPbf3fKl/fFdgOYspI7LLCQg8Z/n1118NgeqdMfkb8XjrwD7Dpsxc5SufQu/
	 1Db0fG2vWUybmbWe1OKoRzExKwo4SgzLw/6oVkBLRAKnVfFXwRHFOogjnn0hFeReKi
	 XvjR0A1TdGIst6ij0u0wmhqnbnECp7sNHVd7yxFuTWiQiqk3KI+u3Cvx0fLKRnxkL5
	 6tvdD4xVcdrje61DeBUUSO6VZ69Y+HynVPUfWYgo/+fRBqKlaf0o/sLGPKy+1lUh1H
	 5ySdUAQ2NXMAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26F9A61442;
	Mon, 11 Aug 2025 16:20:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DE6C154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54BFE40DF4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mc1U56o5lpAA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:20:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A429400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A429400FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A429400FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:20:43 +0000 (UTC)
X-CSE-ConnectionGUID: 6HuMairgRrqpudP81QmmPg==
X-CSE-MsgGUID: LlIy6XVaQLSxpeFRXeZ7wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56899714"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56899714"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:13:33 -0700
X-CSE-ConnectionGUID: 2MC6Vwg7QkCLCPZDQPmZ3w==
X-CSE-MsgGUID: 4l4+PZq6Q4OmPv/r2PgOWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165163241"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa006.jf.intel.com with ESMTP; 11 Aug 2025 09:13:28 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 11 Aug 2025 18:10:42 +0200
Message-ID: <20250811161044.32329-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811161044.32329-1-aleksander.lobakin@intel.com>
References: <20250811161044.32329-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754929243; x=1786465243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xoof84ChjACbqCprx5eAj2+qRer0jGU6xXfBrijknRA=;
 b=mZDR8Nc+n48lBNZlXepL3ycCjx5Fz8xJAu86TvkrcsROt113FqC7meG1
 JXKMHewjMjzcUyWwkEHRyfxAR4f1pMDjLXde/9lGEUmMKiS9IrZtRRdGq
 PE/wNFp8ohj0G5OfNHrogn6viSxVkU1RcvFd0r1LKpqC5b9mmNVeEn7Oq
 Vrt+PI3FKCSZg+Zl+GKdvF8pUEe0ADGaIGo9A8+fXLGTcfAw5TFrqXzMp
 7EkxauM848pmfaB8u3jvz/W1hFpGFFDPckbNUxq8X7baUhb5pZx/rVtob
 8gCYB/qPlz5fnU8GcVkvNM6AWCWSQDffwYOzDcdEeSKwykUNgSPt/ZwtU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mZDR8Nc+
Subject: [Intel-wired-lan] [PATCH iwl-next v4 11/13] idpf: add support for
 XDP on Rx
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

Use libeth XDP infra to support running XDP program on Rx polling.
This includes all of the possible verdicts/actions.
XDP Tx queues are cleaned only in "lazy" mode when there are less than
1/4 free descriptors left on the ring. libeth helper macros to define
driver-specific XDP functions make sure the compiler could uninline
them when needed.

Use __LIBETH_WORD_ACCESS to parse descriptors more efficiently when
applicable. It really gives some good boosts and code size reduction
on x86_64:

XDP only: add/remove: 0/0 grow/shrink: 3/3 up/down: 5/-59 (-54)
with XSk: add/remove: 0/0 grow/shrink: 5/6 up/down: 23/-124 (-101)

with the most demanding workloads like XSk xmit differing in up to 5-8%.

Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |   4 +-
 drivers/net/ethernet/intel/idpf/xdp.h       |  92 +++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |   2 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  23 +--
 drivers/net/ethernet/intel/idpf/xdp.c       | 147 +++++++++++++++++++-
 5 files changed, 248 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 5039feafdee9..39a9c6bd6055 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -646,8 +646,8 @@ struct idpf_tx_queue {
 	__cacheline_group_end_aligned(read_mostly);
 
 	__cacheline_group_begin_aligned(read_write);
-	u16 next_to_use;
-	u16 next_to_clean;
+	u32 next_to_use;
+	u32 next_to_clean;
 
 	union {
 		struct {
diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index 47553ce5f81a..986156162e2d 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -4,12 +4,9 @@
 #ifndef _IDPF_XDP_H_
 #define _IDPF_XDP_H_
 
-#include <linux/types.h>
+#include <net/libeth/xdp.h>
 
-struct bpf_prog;
-struct idpf_vport;
-struct net_device;
-struct netdev_bpf;
+#include "idpf_txrx.h"
 
 int idpf_xdp_rxq_info_init_all(const struct idpf_vport *vport);
 void idpf_xdp_rxq_info_deinit_all(const struct idpf_vport *vport);
@@ -19,6 +16,91 @@ void idpf_xdp_copy_prog_to_rqs(const struct idpf_vport *vport,
 int idpf_xdpsqs_get(const struct idpf_vport *vport);
 void idpf_xdpsqs_put(const struct idpf_vport *vport);
 
+bool idpf_xdp_tx_flush_bulk(struct libeth_xdp_tx_bulk *bq, u32 flags);
+
+/**
+ * idpf_xdp_tx_xmit - produce a single HW Tx descriptor out of XDP desc
+ * @desc: XDP descriptor to pull the DMA address and length from
+ * @i: descriptor index on the queue to fill
+ * @sq: XDP queue to produce the HW Tx descriptor on
+ * @priv: &xsk_tx_metadata_ops on XSk xmit or %NULL
+ */
+static inline void idpf_xdp_tx_xmit(struct libeth_xdp_tx_desc desc, u32 i,
+				    const struct libeth_xdpsq *sq, u64 priv)
+{
+	struct idpf_flex_tx_desc *tx_desc = sq->descs;
+	u32 cmd;
+
+	cmd = FIELD_PREP(IDPF_FLEX_TXD_QW1_DTYPE_M,
+			 IDPF_TX_DESC_DTYPE_FLEX_L2TAG1_L2TAG2);
+	if (desc.flags & LIBETH_XDP_TX_LAST)
+		cmd |= FIELD_PREP(IDPF_FLEX_TXD_QW1_CMD_M,
+				  IDPF_TX_DESC_CMD_EOP);
+	if (priv && (desc.flags & LIBETH_XDP_TX_CSUM))
+		cmd |= FIELD_PREP(IDPF_FLEX_TXD_QW1_CMD_M,
+				  IDPF_TX_FLEX_DESC_CMD_CS_EN);
+
+	tx_desc = &tx_desc[i];
+	tx_desc->buf_addr = cpu_to_le64(desc.addr);
+#ifdef __LIBETH_WORD_ACCESS
+	*(u64 *)&tx_desc->qw1 = ((u64)desc.len << 48) | cmd;
+#else
+	tx_desc->qw1.buf_size = cpu_to_le16(desc.len);
+	tx_desc->qw1.cmd_dtype = cpu_to_le16(cmd);
+#endif
+}
+
+static inline void idpf_xdpsq_set_rs(const struct idpf_tx_queue *xdpsq)
+{
+	u32 ntu, cmd;
+
+	ntu = xdpsq->next_to_use;
+	if (unlikely(!ntu))
+		ntu = xdpsq->desc_count;
+
+	cmd = FIELD_PREP(IDPF_FLEX_TXD_QW1_CMD_M, IDPF_TX_DESC_CMD_RS);
+#ifdef __LIBETH_WORD_ACCESS
+	*(u64 *)&xdpsq->flex_tx[ntu - 1].q.qw1 |= cmd;
+#else
+	xdpsq->flex_tx[ntu - 1].q.qw1.cmd_dtype |= cpu_to_le16(cmd);
+#endif
+}
+
+static inline void idpf_xdpsq_update_tail(const struct idpf_tx_queue *xdpsq)
+{
+	dma_wmb();
+	writel_relaxed(xdpsq->next_to_use, xdpsq->tail);
+}
+
+/**
+ * idpf_xdp_tx_finalize - finalize sending over XDPSQ
+ * @_xdpsq: XDP Tx queue
+ * @sent: whether any frames were sent
+ * @flush: whether to update RS bit and the tail register
+ *
+ * Set the RS bit ("end of batch"), bump the tail, and queue the cleanup timer.
+ * To be called after a NAPI polling loop, at the end of .ndo_xdp_xmit() etc.
+ */
+static inline void idpf_xdp_tx_finalize(void *_xdpsq, bool sent, bool flush)
+{
+	struct idpf_tx_queue *xdpsq = _xdpsq;
+
+	if ((!flush || unlikely(!sent)) &&
+	    likely(xdpsq->desc_count - 1 != xdpsq->pending))
+		return;
+
+	libeth_xdpsq_lock(&xdpsq->xdp_lock);
+
+	idpf_xdpsq_set_rs(xdpsq);
+	idpf_xdpsq_update_tail(xdpsq);
+
+	libeth_xdpsq_queue_timer(xdpsq->timer);
+
+	libeth_xdpsq_unlock(&xdpsq->xdp_lock);
+}
+
+void idpf_xdp_set_features(const struct idpf_vport *vport);
+
 int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
 
 #endif /* _IDPF_XDP_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 1d96947e4091..371fd40356c4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -835,6 +835,8 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	netdev->hw_features |=  netdev->features | other_offloads;
 	netdev->vlan_features |= netdev->features | other_offloads;
 	netdev->hw_enc_features |= dflt_features | other_offloads;
+	idpf_xdp_set_features(vport);
+
 	idpf_set_ethtool_ops(netdev);
 	netif_set_affinity_auto(netdev);
 	SET_NETDEV_DEV(netdev, &adapter->pdev->dev);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index bfda32959945..f1907aeaf83b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1,8 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2023 Intel Corporation */
 
-#include <net/libeth/xdp.h>
-
 #include "idpf.h"
 #include "idpf_ptp.h"
 #include "idpf_virtchnl.h"
@@ -3127,14 +3125,12 @@ static bool idpf_rx_process_skb_fields(struct sk_buff *skb,
 	return !__idpf_rx_process_skb_fields(rxq, skb, xdp->desc);
 }
 
-static void
-idpf_xdp_run_pass(struct libeth_xdp_buff *xdp, struct napi_struct *napi,
-		  struct libeth_rq_napi_stats *ss,
-		  const struct virtchnl2_rx_flex_desc_adv_nic_3 *desc)
-{
-	libeth_xdp_run_pass(xdp, NULL, napi, ss, desc, NULL,
-			    idpf_rx_process_skb_fields);
-}
+LIBETH_XDP_DEFINE_START();
+LIBETH_XDP_DEFINE_RUN(static idpf_xdp_run_pass, idpf_xdp_run_prog,
+		      idpf_xdp_tx_flush_bulk, idpf_rx_process_skb_fields);
+LIBETH_XDP_DEFINE_FINALIZE(static idpf_xdp_finalize_rx, idpf_xdp_tx_flush_bulk,
+			   idpf_xdp_tx_finalize);
+LIBETH_XDP_DEFINE_END();
 
 /**
  * idpf_rx_hsplit_wa - handle header buffer overflows and split errors
@@ -3222,7 +3218,10 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 	struct libeth_rq_napi_stats rs = { };
 	u16 ntc = rxq->next_to_clean;
 	LIBETH_XDP_ONSTACK_BUFF(xdp);
+	LIBETH_XDP_ONSTACK_BULK(bq);
 
+	libeth_xdp_tx_init_bulk(&bq, rxq->xdp_prog, rxq->xdp_rxq.dev,
+				rxq->xdpsqs, rxq->num_xdp_txq);
 	libeth_xdp_init_buff(xdp, &rxq->xdp, &rxq->xdp_rxq);
 
 	/* Process Rx packets bounded by budget */
@@ -3318,9 +3317,11 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 		if (!idpf_rx_splitq_is_eop(rx_desc) || unlikely(!xdp->data))
 			continue;
 
-		idpf_xdp_run_pass(xdp, rxq->napi, &rs, rx_desc);
+		idpf_xdp_run_pass(xdp, &bq, rxq->napi, &rs, rx_desc);
 	}
 
+	idpf_xdp_finalize_rx(&bq);
+
 	rxq->next_to_clean = ntc;
 	libeth_xdp_save_buff(&rxq->xdp, xdp);
 
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 09e84fe80d4e..d7ba2848148e 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -1,8 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /* Copyright (C) 2025 Intel Corporation */
 
-#include <net/libeth/xdp.h>
-
 #include "idpf.h"
 #include "idpf_virtchnl.h"
 #include "xdp.h"
@@ -114,6 +112,8 @@ void idpf_xdp_copy_prog_to_rqs(const struct idpf_vport *vport,
 	idpf_rxq_for_each(vport, idpf_xdp_rxq_assign_prog, xdp_prog);
 }
 
+static void idpf_xdp_tx_timer(struct work_struct *work);
+
 int idpf_xdpsqs_get(const struct idpf_vport *vport)
 {
 	struct libeth_xdpsq_timer **timers __free(kvfree) = NULL;
@@ -154,6 +154,8 @@ int idpf_xdpsqs_get(const struct idpf_vport *vport)
 
 		xdpsq->timer = timers[i - sqs];
 		libeth_xdpsq_get(&xdpsq->xdp_lock, dev, vport->xdpsq_share);
+		libeth_xdpsq_init_timer(xdpsq->timer, xdpsq, &xdpsq->xdp_lock,
+					idpf_xdp_tx_timer);
 
 		xdpsq->pending = 0;
 		xdpsq->xdp_tx = 0;
@@ -180,6 +182,7 @@ void idpf_xdpsqs_put(const struct idpf_vport *vport)
 		if (!idpf_queue_has_clear(XDP, xdpsq))
 			continue;
 
+		libeth_xdpsq_deinit_timer(xdpsq->timer);
 		libeth_xdpsq_put(&xdpsq->xdp_lock, dev);
 
 		kfree(xdpsq->timer);
@@ -187,6 +190,146 @@ void idpf_xdpsqs_put(const struct idpf_vport *vport)
 	}
 }
 
+static int idpf_xdp_parse_cqe(const struct idpf_splitq_4b_tx_compl_desc *desc,
+			      bool gen)
+{
+	u32 val;
+
+#ifdef __LIBETH_WORD_ACCESS
+	val = *(const u32 *)desc;
+#else
+	val = ((u32)le16_to_cpu(desc->q_head_compl_tag.q_head) << 16) |
+	      le16_to_cpu(desc->qid_comptype_gen);
+#endif
+	if (!!(val & IDPF_TXD_COMPLQ_GEN_M) != gen)
+		return -ENODATA;
+
+	if (unlikely((val & GENMASK(IDPF_TXD_COMPLQ_GEN_S - 1, 0)) !=
+		     FIELD_PREP(IDPF_TXD_COMPLQ_COMPL_TYPE_M,
+				IDPF_TXD_COMPLT_RS)))
+		return -EINVAL;
+
+	return upper_16_bits(val);
+}
+
+static u32 idpf_xdpsq_poll(struct idpf_tx_queue *xdpsq, u32 budget)
+{
+	struct idpf_compl_queue *cq = xdpsq->complq;
+	u32 tx_ntc = xdpsq->next_to_clean;
+	u32 tx_cnt = xdpsq->desc_count;
+	u32 ntc = cq->next_to_clean;
+	u32 cnt = cq->desc_count;
+	u32 done_frames;
+	bool gen;
+
+	gen = idpf_queue_has(GEN_CHK, cq);
+
+	for (done_frames = 0; done_frames < budget; ) {
+		int ret;
+
+		ret = idpf_xdp_parse_cqe(&cq->comp_4b[ntc], gen);
+		if (ret >= 0) {
+			done_frames = ret > tx_ntc ? ret - tx_ntc :
+						     ret + tx_cnt - tx_ntc;
+			goto next;
+		}
+
+		switch (ret) {
+		case -ENODATA:
+			goto out;
+		case -EINVAL:
+			break;
+		}
+
+next:
+		if (unlikely(++ntc == cnt)) {
+			ntc = 0;
+			gen = !gen;
+			idpf_queue_change(GEN_CHK, cq);
+		}
+	}
+
+out:
+	cq->next_to_clean = ntc;
+
+	return done_frames;
+}
+
+static u32 idpf_xdpsq_complete(void *_xdpsq, u32 budget)
+{
+	struct libeth_xdpsq_napi_stats ss = { };
+	struct idpf_tx_queue *xdpsq = _xdpsq;
+	u32 tx_ntc = xdpsq->next_to_clean;
+	u32 tx_cnt = xdpsq->desc_count;
+	struct xdp_frame_bulk bq;
+	struct libeth_cq_pp cp = {
+		.dev	= xdpsq->dev,
+		.bq	= &bq,
+		.xss	= &ss,
+		.napi	= true,
+	};
+	u32 done_frames;
+
+	done_frames = idpf_xdpsq_poll(xdpsq, budget);
+	if (unlikely(!done_frames))
+		return 0;
+
+	xdp_frame_bulk_init(&bq);
+
+	for (u32 i = 0; likely(i < done_frames); i++) {
+		libeth_xdp_complete_tx(&xdpsq->tx_buf[tx_ntc], &cp);
+
+		if (unlikely(++tx_ntc == tx_cnt))
+			tx_ntc = 0;
+	}
+
+	xdp_flush_frame_bulk(&bq);
+
+	xdpsq->next_to_clean = tx_ntc;
+	xdpsq->pending -= done_frames;
+	xdpsq->xdp_tx -= cp.xdp_tx;
+
+	return done_frames;
+}
+
+static u32 idpf_xdp_tx_prep(void *_xdpsq, struct libeth_xdpsq *sq)
+{
+	struct idpf_tx_queue *xdpsq = _xdpsq;
+	u32 free;
+
+	libeth_xdpsq_lock(&xdpsq->xdp_lock);
+
+	free = xdpsq->desc_count - xdpsq->pending;
+	if (free < xdpsq->thresh)
+		free += idpf_xdpsq_complete(xdpsq, xdpsq->thresh);
+
+	*sq = (struct libeth_xdpsq){
+		.sqes		= xdpsq->tx_buf,
+		.descs		= xdpsq->desc_ring,
+		.count		= xdpsq->desc_count,
+		.lock		= &xdpsq->xdp_lock,
+		.ntu		= &xdpsq->next_to_use,
+		.pending	= &xdpsq->pending,
+		.xdp_tx		= &xdpsq->xdp_tx,
+	};
+
+	return free;
+}
+
+LIBETH_XDP_DEFINE_START();
+LIBETH_XDP_DEFINE_TIMER(static idpf_xdp_tx_timer, idpf_xdpsq_complete);
+LIBETH_XDP_DEFINE_FLUSH_TX(idpf_xdp_tx_flush_bulk, idpf_xdp_tx_prep,
+			   idpf_xdp_tx_xmit);
+LIBETH_XDP_DEFINE_END();
+
+void idpf_xdp_set_features(const struct idpf_vport *vport)
+{
+	if (!idpf_is_queue_model_split(vport->rxq_model))
+		return;
+
+	libeth_xdp_set_features_noredir(vport->netdev);
+}
+
 static int idpf_xdp_setup_prog(struct idpf_vport *vport,
 			       const struct netdev_bpf *xdp)
 {
-- 
2.50.1

