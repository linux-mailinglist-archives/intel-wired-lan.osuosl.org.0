Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CF2CA4589
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Dec 2025 16:51:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF59D846AE;
	Thu,  4 Dec 2025 15:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fhi2bvs34Rnr; Thu,  4 Dec 2025 15:51:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01302846DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764863514;
	bh=JkFhwucA/nrlnIEvL6DujVFv1iE8/IcOYjQaF5UuB8k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PMyMgbAV4/knr8crGclJJcn98Scx7/R/M1SzRyLhbfL2YTJ3s8GkeOQ2ura+P4eIg
	 PJ2ljqKCIZqfzhrvkWXvBOQ4gH+WDXOLiEB1MtLQsQQ4SzMuAl10E15PzCOfk80VjC
	 2UZO6ZsmSHkJ0fGpdMK1/NlPwnRyjCXyeYWrTMU2MJWGEpjFMriGzZKzOqXDS8Lofs
	 c/XJi/QfMhzlwUxv8EngPtI9botGRdNOSCKz1Gzm5bCVCTpmDhdK/Y0qxh3dbaoYpt
	 zViNqXSzBk2g0i8Ssac3CYTgprIsFWGA66Z72tsiGYwNawF5wolZSW9cwF8psLhi3j
	 rjjFqcdW3UfQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01302846DD;
	Thu,  4 Dec 2025 15:51:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 62A8CE7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 492B4614D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eo8QGhpOdIjG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Dec 2025 15:51:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB55D61549
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB55D61549
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB55D61549
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Dec 2025 15:51:50 +0000 (UTC)
X-CSE-ConnectionGUID: XfkoLyhFQxeaJdZQMX970w==
X-CSE-MsgGUID: mWOQh09HR6CQLo3dZrUjMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="92365112"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="92365112"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 07:51:51 -0800
X-CSE-ConnectionGUID: 6PKjto03T8yaVnVenlRHRQ==
X-CSE-MsgGUID: 4bVDufmkTWq3nj/GUNPyIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="194677264"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa007.fm.intel.com with ESMTP; 04 Dec 2025 07:51:47 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu,  4 Dec 2025 16:51:29 +0100
Message-ID: <20251204155133.2437621-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764863511; x=1796399511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JHpQKJQHKub/qIFhXAATo79hs3k9QEabO0yRwPmth4Q=;
 b=R4ebtjyy3JnuV9647z2/ThpwU9I1DCC+eJEm2Hj2tf9sdQ0ad3o0TRI5
 hgqzQjMJwAjS+VCpFiuaSDL7UgA3EiZnJsp0pHvf3NTT0m771+jTrQTKd
 2yuYJ15X3GaQKQM2xBb1R5Wn5QufUWGc+unM05ZEpapdCQahFc/tymLT5
 8eEmfdLqnmTmCQfHuMJiaTH7vcQkMZwW7bML7ib671f5+orUNe0beMYN9
 ZTaxHchZyvMWLx48682lX0JYb5cK+CJJY2E+Cs20m9PZ7+7gNNvDGehA4
 y+isbIpn9mFEM3IVEiOyPJRBUUFc01Uq1y6XAGesMRYIGslCcNEOXejNs
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R4ebtjyy
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] libeth: pass Rx queue
 index to PP when creating a fill queue
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

Since recently, page_pool_create() accepts optional stack index of
the Rx queue which the pool will be created for. It can then be
used on control path for stuff like memory providers.
Add the same field to libeth_fq and pass the index from all the
drivers using libeth for managing Rx to simplify implementing MP
support later.
idpf has one libeth_fq per buffer/fill queue and each Rx queue has
two fill queues, but since fill queues can never be shared, we can
store the corresponding Rx queue index there during the
initialization to pass it to libeth.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.h |  2 ++
 include/net/libeth/rx.h                     |  2 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c   |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 13 +++++++++++++
 drivers/net/ethernet/intel/libeth/rx.c      |  1 +
 6 files changed, 21 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index 6796f010e382..0eaebac8ceae 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -748,6 +748,7 @@ libeth_cacheline_set_assert(struct idpf_tx_queue, 64,
  * @size: Length of descriptor ring in bytes
  * @dma: Physical address of ring
  * @q_vector: Backreference to associated vector
+ * @rxq_idx: stack index of the corresponding Rx queue
  * @rx_buffer_low_watermark: RX buffer low watermark
  * @rx_hbuf_size: Header buffer size
  * @rx_buf_size: Buffer size
@@ -791,6 +792,7 @@ struct idpf_buf_queue {
 	dma_addr_t dma;
 
 	struct idpf_q_vector *q_vector;
+	u16 rxq_idx;
 
 	u16 rx_buffer_low_watermark;
 	u16 rx_hbuf_size;
diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h
index 0e736846c5e8..db838ef7f9bb 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -72,6 +72,7 @@ enum libeth_fqe_type {
  * @no_napi: the queue is not a data queue and does not have NAPI
  * @buf_len: HW-writeable length per each buffer
  * @nid: ID of the closest NUMA node with memory
+ * @idx: stack index of the corresponding Rx queue
  */
 struct libeth_fq {
 	struct_group_tagged(libeth_fq_fp, fp,
@@ -90,6 +91,7 @@ struct libeth_fq {
 
 	u32			buf_len;
 	int			nid;
+	u32			idx;
 };
 
 int libeth_rx_fq_create(struct libeth_fq *fq, void *napi_dev);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 275b11dd0c60..3d938d7ab2cc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -771,6 +771,7 @@ int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring)
 		.count		= rx_ring->count,
 		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
 		.nid		= NUMA_NO_NODE,
+		.idx		= rx_ring->queue_index,
 	};
 	int ret;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 6fb7051aa463..7097324c38f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -607,6 +607,7 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
 	struct libeth_fq fq = {
 		.count		= rq->count,
 		.nid		= NUMA_NO_NODE,
+		.idx		= rq->q_index,
 		.hsplit		= rq->vsi->hsplit,
 		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
 		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
@@ -629,6 +630,7 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
 		.count		= rq->count,
 		.type		= LIBETH_FQE_HDR,
 		.nid		= NUMA_NO_NODE,
+		.idx		= rq->q_index,
 		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
 	};
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 72215612b460..5dc41b7ba609 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -561,6 +561,7 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 		.type	= LIBETH_FQE_HDR,
 		.xdp	= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid	= idpf_q_vector_to_mem(bufq->q_vector),
+		.idx	= bufq->rxq_idx,
 	};
 	int ret;
 
@@ -703,6 +704,7 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
 		.type		= LIBETH_FQE_MTU,
 		.buf_len	= IDPF_RX_MAX_BUF_SZ,
 		.nid		= idpf_q_vector_to_mem(rxq->q_vector),
+		.idx		= rxq->idx,
 	};
 	int ret;
 
@@ -763,6 +765,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
 		.hsplit		= idpf_queue_has(HSPLIT_EN, bufq),
 		.xdp		= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid		= idpf_q_vector_to_mem(bufq->q_vector),
+		.idx		= bufq->rxq_idx,
 	};
 	int ret;
 
@@ -1922,6 +1925,16 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
 							LIBETH_RX_LL_LEN;
 			idpf_rxq_set_descids(rsrc, q);
 		}
+
+		if (!idpf_is_queue_model_split(rsrc->rxq_model))
+			continue;
+
+		for (u32 j = 0; j < rsrc->num_bufqs_per_qgrp; j++) {
+			struct idpf_buf_queue *bufq;
+
+			bufq = &rx_qgrp->splitq.bufq_sets[j].bufq;
+			bufq->rxq_idx = rx_qgrp->splitq.rxq_sets[0]->rxq.idx;
+		}
 	}
 
 err_alloc:
diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index 1d8248a31037..9ac3a1448b2f 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -157,6 +157,7 @@ int libeth_rx_fq_create(struct libeth_fq *fq, void *napi_dev)
 		.order		= LIBETH_RX_PAGE_ORDER,
 		.pool_size	= fq->count,
 		.nid		= fq->nid,
+		.queue_idx	= fq->idx,
 		.dev		= napi ? napi->dev->dev.parent : napi_dev,
 		.netdev		= napi ? napi->dev : NULL,
 		.napi		= napi,
-- 
2.52.0

