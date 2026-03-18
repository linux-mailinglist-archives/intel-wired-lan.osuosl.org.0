Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PVZMI/UummfcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:36:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B772BF5DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 17:36:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8192C8345D;
	Wed, 18 Mar 2026 16:36:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OTCHxV9dMM-x; Wed, 18 Mar 2026 16:36:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAFA683422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773851788;
	bh=96PQfZW3Juge0RRy90S3AODwvZmX/UZ6fxF1TiNSQWQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0rJqUdStTl4b2g02rkoO3A1JAv5CsZNV3wQwHuPCy33XqFPe3+ZtcagViN8iGYGf/
	 DENGVMwEq9jRebojg+VYgkY+bBNYYLPyvQKMtjRlgWI0q5JyO4pc2jJgMXKiKl0FGz
	 HcQPpUx701VfG9dfIPE6qBAwb2lLjD8oO7006sojpBOIGIGOfFOppM08z06F9vn9E9
	 Afz7o7MqIj2M5fLhpGT9iaa6LfA1af0ph8iYtdJJPybLgutHmP6YytzYb7eyAe1G6N
	 /NuvEl2AHWzIzEf4DaEp4rWbKwlSu1Vfh2l5iMGZU3UUfFCVgKrB2Q0OLfdtUXoCtb
	 J5KBqZlu07zkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAFA683422;
	Wed, 18 Mar 2026 16:36:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B19591AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2F5A83330
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SNo3iZJIjt2b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 16:36:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8100C8291C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8100C8291C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8100C8291C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 16:36:26 +0000 (UTC)
X-CSE-ConnectionGUID: UrHfIKqoSHmwJ3GBssmsdg==
X-CSE-MsgGUID: VDVe+yGIQBGBvZmADUTncQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="62479385"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="62479385"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 09:36:26 -0700
X-CSE-ConnectionGUID: pNXloGNVQgCkZi36+Im57w==
X-CSE-MsgGUID: wS/egQozS1CejQGlntD4Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218687666"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 18 Mar 2026 09:36:23 -0700
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
Date: Wed, 18 Mar 2026 17:35:01 +0100
Message-ID: <20260318163505.31765-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318163505.31765-1-aleksander.lobakin@intel.com>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773851786; x=1805387786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mQnN/CizJwiQJ0lXtrC3uqpFki5L4HzDyDOxvO6TXMk=;
 b=KZKJJAsOLp+Jf/EizJAZZJdxzNkRl71C7u+zotPdEmWtrYeMl1zKh6Bb
 qnc9oIPDbYrEV4osbRmZNI9TB3Afx+WpK8U/bE/gY8d0lrZz1tYuyOcnT
 /DUfa8ePccCIjSvZERWpZrTJMBxl3Qs+rLu3iWcv8pvplRHxTl1ZWX5Lb
 kjelLvKqDe1jH2GI221cz0m2w1Y8MsJrNA3oMPJeIJhdAUKr2gxJV7P4O
 5Cu98NwaV/5ZAoFRt+Iz5rrIAp0U3k1i1Fktzr6BPgE00aSgEh2mndBdO
 2wHurmWJVlg9ykafHfXt9AkPlNvZNfAmwiz82aZImVSJ9Kmo83nb8YEJi
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KZKJJAsO
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/5] libeth: pass Rx queue
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 44B772BF5DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 4be5b3b6d3ed..a0d92adf11c4 100644
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
index 5d991404845e..3b3d7acd13c9 100644
--- a/include/net/libeth/rx.h
+++ b/include/net/libeth/rx.h
@@ -71,6 +71,7 @@ enum libeth_fqe_type {
  * @xdp: flag indicating whether XDP is enabled
  * @buf_len: HW-writeable length per each buffer
  * @nid: ID of the closest NUMA node with memory
+ * @idx: stack index of the corresponding Rx queue
  */
 struct libeth_fq {
 	struct_group_tagged(libeth_fq_fp, fp,
@@ -88,6 +89,7 @@ struct libeth_fq {
 
 	u32			buf_len;
 	int			nid;
+	u32			idx;
 };
 
 int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 363c42bf3dcf..d3c68659162b 100644
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
index 1667f686ff75..f162cdfc62a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -609,6 +609,7 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
 	struct libeth_fq fq = {
 		.count		= rq->count,
 		.nid		= NUMA_NO_NODE,
+		.idx		= rq->q_index,
 		.hsplit		= rq->vsi->hsplit,
 		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
 		.buf_len	= LIBIE_MAX_RX_BUF_LEN,
@@ -631,6 +632,7 @@ static int ice_rxq_pp_create(struct ice_rx_ring *rq)
 		.count		= rq->count,
 		.type		= LIBETH_FQE_HDR,
 		.nid		= NUMA_NO_NODE,
+		.idx		= rq->q_index,
 		.xdp		= ice_is_xdp_ena_vsi(rq->vsi),
 	};
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 252259993022..45ee5b80479a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -557,6 +557,7 @@ static int idpf_rx_hdr_buf_alloc_all(struct idpf_buf_queue *bufq)
 		.type	= LIBETH_FQE_HDR,
 		.xdp	= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid	= idpf_q_vector_to_mem(bufq->q_vector),
+		.idx	= bufq->rxq_idx,
 	};
 	int ret;
 
@@ -699,6 +700,7 @@ static int idpf_rx_bufs_init_singleq(struct idpf_rx_queue *rxq)
 		.type		= LIBETH_FQE_MTU,
 		.buf_len	= IDPF_RX_MAX_BUF_SZ,
 		.nid		= idpf_q_vector_to_mem(rxq->q_vector),
+		.idx		= rxq->idx,
 	};
 	int ret;
 
@@ -759,6 +761,7 @@ static int idpf_rx_bufs_init(struct idpf_buf_queue *bufq,
 		.hsplit		= idpf_queue_has(HSPLIT_EN, bufq),
 		.xdp		= idpf_xdp_enabled(bufq->q_vector->vport),
 		.nid		= idpf_q_vector_to_mem(bufq->q_vector),
+		.idx		= bufq->rxq_idx,
 	};
 	int ret;
 
@@ -1913,6 +1916,16 @@ static int idpf_rxq_group_alloc(struct idpf_vport *vport,
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
index 62521a1f4ec9..8874b714cdcc 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -156,6 +156,7 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
 		.order		= LIBETH_RX_PAGE_ORDER,
 		.pool_size	= fq->count,
 		.nid		= fq->nid,
+		.queue_idx	= fq->idx,
 		.dev		= napi->dev->dev.parent,
 		.netdev		= napi->dev,
 		.napi		= napi,
-- 
2.53.0

