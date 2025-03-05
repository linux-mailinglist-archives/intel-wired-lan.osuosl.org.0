Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA73A5049C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:23:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43219811D8;
	Wed,  5 Mar 2025 16:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3wmRNew-f63B; Wed,  5 Mar 2025 16:23:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EA8181AA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191806;
	bh=92BRU2LPBln88gkH5BVLuG4Crwe+czJMqk9eE1dJGno=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m6CDa/zHds0SEBYO514UQVTTsyYKuJ5fBlgc+Hxh9Fex7AS7ffOHlWaX4TvupzYx1
	 0jnvKKnMIdG48nxXJYMVKstG9t1GezfY7+DcimQy3CvSfZLhh4AyT5L+0tjLVbLpr0
	 xTG2xHFJnKHGhvfUob1eeVy8uq+WdL6DRQwRSe6A9LEpnwSQScjYhBH2Z/Nxp1y61U
	 +aBiu4f1hlbY4NH6RnhVhw3AorgX5IUtqL4MK7w8ddvNHWNoNUpFM+UFzRUT6BoZ7q
	 gG+zoEzOeeMy2mP/KsL2JU9XCoG2W1i5Q4kKieHEKa/n0SvUTcxV3YOn2o5W3oS4WU
	 5DVY+OZbcFSvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EA8181AA7;
	Wed,  5 Mar 2025 16:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 57BC0EDB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 475D660F0B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N41JE6obYLN5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:23:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69256608D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69256608D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69256608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:23:23 +0000 (UTC)
X-CSE-ConnectionGUID: Tt6G7F+ETCqvvmMyjg/bgA==
X-CSE-MsgGUID: Pk7gmBU5RHa1S6OS5oGR2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026650"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026650"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:23:23 -0800
X-CSE-ConnectionGUID: EYnFiPUkSaOqE90dufVLMA==
X-CSE-MsgGUID: jBtuLi88RbSkiBsbKsS9wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123833046"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:23:19 -0800
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
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:32 +0100
Message-ID: <20250305162132.1106080-17-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191804; x=1772727804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZW51NgkeoNFGH21SSoAtIAD2UcPCUZ7Dkvt+E4gXwis=;
 b=f8U7fxvC93QbzufSw61uvtdZUzjQQrvIkFDH1KlRGvZjmNJRYO4vMnP/
 51yOD2LHnzN+yVeyB+XxLdBBY9BZkBHkQFdso3HKZyIn5m6pa8HpmAhk6
 skqUYNPhyq4TkBVFk/EAbmUJaS/URbhS3VAGsA3rXD4wW7pyTcBc7QNlm
 2FG/gQ32SdyB6pMqqOm9fv+KopMxeKn4dTj6eNlso8LGLeI6i1MPk7f/D
 alrrsTTsEeMCsphBH9SX9j7UuzGEhoB+TVyuAB8P9J4gN/+k2TScOhih7
 IeinDSDSnk1CfsYuSiMWKKV2o0QdClZlmzoea+yOboqClQHb45cqGUL71
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f8U7fxvC
Subject: [Intel-wired-lan] [PATCH net-next 16/16] idpf: add XDP RSS hash hint
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

Add &xdp_metadata_ops with a callback to get RSS hash hint from the
descriptor. Declare the splitq 32-byte descriptor as 4 u64s to parse
them more efficiently when possible.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/xdp.h | 64 +++++++++++++++++++++++++++
 drivers/net/ethernet/intel/idpf/xdp.c | 28 +++++++++++-
 2 files changed, 91 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/xdp.h b/drivers/net/ethernet/intel/idpf/xdp.h
index a2ac1b2f334f..52783a5c8e0f 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.h
+++ b/drivers/net/ethernet/intel/idpf/xdp.h
@@ -107,6 +107,70 @@ static inline void idpf_xdp_tx_finalize(void *_xdpq, bool sent, bool flush)
 	libeth_xdpsq_unlock(&xdpq->xdp_lock);
 }
 
+struct idpf_xdp_rx_desc {
+	aligned_u64		qw0;
+#define IDPF_XDP_RX_BUFQ	BIT_ULL(47)
+#define IDPF_XDP_RX_GEN		BIT_ULL(46)
+#define IDPF_XDP_RX_LEN		GENMASK_ULL(45, 32)
+#define IDPF_XDP_RX_PT		GENMASK_ULL(25, 16)
+
+	aligned_u64		qw1;
+#define IDPF_XDP_RX_BUF		GENMASK_ULL(47, 32)
+#define IDPF_XDP_RX_EOP		BIT_ULL(1)
+
+	aligned_u64		qw2;
+#define IDPF_XDP_RX_HASH	GENMASK_ULL(31, 0)
+
+	aligned_u64		qw3;
+} __aligned(4 * sizeof(u64));
+static_assert(sizeof(struct idpf_xdp_rx_desc) ==
+	      sizeof(struct virtchnl2_rx_flex_desc_adv_nic_3));
+
+#define idpf_xdp_rx_bufq(desc)	!!((desc)->qw0 & IDPF_XDP_RX_BUFQ)
+#define idpf_xdp_rx_gen(desc)	!!((desc)->qw0 & IDPF_XDP_RX_GEN)
+#define idpf_xdp_rx_len(desc)	FIELD_GET(IDPF_XDP_RX_LEN, (desc)->qw0)
+#define idpf_xdp_rx_pt(desc)	FIELD_GET(IDPF_XDP_RX_PT, (desc)->qw0)
+#define idpf_xdp_rx_buf(desc)	FIELD_GET(IDPF_XDP_RX_BUF, (desc)->qw1)
+#define idpf_xdp_rx_eop(desc)	!!((desc)->qw1 & IDPF_XDP_RX_EOP)
+#define idpf_xdp_rx_hash(desc)	FIELD_GET(IDPF_XDP_RX_HASH, (desc)->qw2)
+
+static inline void
+idpf_xdp_get_qw0(struct idpf_xdp_rx_desc *desc,
+		 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rxd)
+{
+#ifdef __LIBETH_WORD_ACCESS
+	desc->qw0 = ((const typeof(desc))rxd)->qw0;
+#else
+	desc->qw0 = ((u64)le16_to_cpu(rxd->pktlen_gen_bufq_id) << 32) |
+		    ((u64)le16_to_cpu(rxd->ptype_err_fflags0) << 16);
+#endif
+}
+
+static inline void
+idpf_xdp_get_qw1(struct idpf_xdp_rx_desc *desc,
+		 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rxd)
+{
+#ifdef __LIBETH_WORD_ACCESS
+	desc->qw1 = ((const typeof(desc))rxd)->qw1;
+#else
+	desc->qw1 = ((u64)le16_to_cpu(rxd->buf_id) << 32) |
+		    rxd->status_err0_qw1;
+#endif
+}
+
+static inline void
+idpf_xdp_get_qw2(struct idpf_xdp_rx_desc *desc,
+		 const struct virtchnl2_rx_flex_desc_adv_nic_3 *rxd)
+{
+#ifdef __LIBETH_WORD_ACCESS
+	desc->qw2 = ((const typeof(desc))rxd)->qw2;
+#else
+	desc->qw2 = ((u64)rxd->hash3 << 24) |
+		    ((u64)rxd->ff2_mirrid_hash2.hash2 << 16) |
+		    le16_to_cpu(rxd->hash1);
+#endif
+}
+
 void idpf_xdp_set_features(const struct idpf_vport *vport);
 
 int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp);
diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
index 1834f217a07f..b0b4b785bf8e 100644
--- a/drivers/net/ethernet/intel/idpf/xdp.c
+++ b/drivers/net/ethernet/intel/idpf/xdp.c
@@ -386,12 +386,38 @@ int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 				       idpf_xdp_tx_finalize);
 }
 
+static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
+			      enum xdp_rss_hash_type *rss_type)
+{
+	const struct libeth_xdp_buff *xdp = (typeof(xdp))ctx;
+	const struct idpf_rx_queue *rxq;
+	struct idpf_xdp_rx_desc desc;
+	struct libeth_rx_pt pt;
+
+	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
+
+	idpf_xdp_get_qw0(&desc, xdp->desc);
+
+	pt = rxq->rx_ptype_lkup[idpf_xdp_rx_pt(&desc)];
+	if (!libeth_rx_pt_has_hash(rxq->xdp_rxq.dev, pt))
+		return -ENODATA;
+
+	idpf_xdp_get_qw2(&desc, xdp->desc);
+
+	return libeth_xdpmo_rx_hash(hash, rss_type, idpf_xdp_rx_hash(&desc),
+				    pt);
+}
+
+static const struct xdp_metadata_ops idpf_xdpmo = {
+	.xmo_rx_hash		= idpf_xdpmo_rx_hash,
+};
+
 void idpf_xdp_set_features(const struct idpf_vport *vport)
 {
 	if (!idpf_is_queue_model_split(vport->rxq_model))
 		return;
 
-	libeth_xdp_set_features_noredir(vport->netdev);
+	libeth_xdp_set_features_noredir(vport->netdev, &idpf_xdpmo);
 }
 
 /**
-- 
2.48.1

