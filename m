Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3381981D179
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE28B416C2;
	Sat, 23 Dec 2023 03:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE28B416C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300405;
	bh=OlCabVC3EVZ2LXPEOpOPFvHSM1YbhabllL7uVaRJMOo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FhVoEDIYyYtkM3YehCHGqqYDCwJHUAxmN5PG6iuptXTGqn4taOPJz7nuMbFR4vsOs
	 5KC+FsGVPqwqvxHiPZo5QBqW7phrUGRbyztCMnC+u07NUeZGC5oMd9tjiRq+ipz2Me
	 7mAG2z+7WF+PHAE/FPxxKg9j5jtDw7BYd7wcVrrP91gy8IehYDH3N7KDToY6C9fQZ+
	 6Pgs/wFFpWP8k2bQ5d3AmZoFyh3uRgiyH+jzvLwABMg/8+yRuNSfMxbevaun4pzQ6d
	 JXmmhNg0gp0RW6hUjM88UXT4Xs9nf7WmEJJT3cDNlbCAkovwMEDO+8HMN8LqV5H8iu
	 aoRwJXUENtAGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSwXfZfz80wb; Sat, 23 Dec 2023 03:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA8EE415EF;
	Sat, 23 Dec 2023 03:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA8EE415EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF0A41BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C179442DBA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C179442DBA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lb_fnDe47xA2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:34 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F4EB42D6E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F4EB42D6E
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611018"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611018"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537610"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:30 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:43 +0100
Message-ID: <20231223025554.2316836-24-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300374; x=1734836374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g84mIZ7oZRiBu9UMjC2ESkfmtWg04z86beCO9L8dm/4=;
 b=JC53GI9NwDzwHmv2KblqczZT95f1d1r7tCHj5FftygOwnp+Xn/gUpUHy
 aVCLXU3YfZcAZ0SfRs9r0HEAC6j0DYXgms45jgpw/2uaYpKbWqdpUpYf/
 s/WRce1IabOEu6C4tA2Sdl/0jLOFKzr7lUuP/LHApix0R+wtfggRFl8F9
 XYSvIghFqAeR2wLFpbVbYh/hWefC8w7ky31kWuNS5KwFt3BBUvvnkT/1K
 rhm6QHKQRu+KVL+uSGgtXnperpSGW8+0UAAZwWQKDZNJR7243NDwE/fQH
 3Fe6CDWzhsZFTaJmwoGkkDmjZh5vKEW9begfQFRRg1DlJS/AXAbcWmEn7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JC53GI9N
Subject: [Intel-wired-lan] [PATCH RFC net-next 23/34] idpf: use generic
 functions to build xdp_buff and skb
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation of XDP support, move from having skb as the main frame
container during the Rx polling to &xdp_buff.
This allows to use generic and libie helpers for building an XDP buffer
and changes the logics: now we try to allocate an skb only when we
processed all the descriptors related to the frame.
For sure, &xdp_buff is "a bit" bigger in size comparing to skb pointer
to store on the ring, but I already reserved a cacheline-aligned slot
for it earlier.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  60 +++-------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 108 ++++--------------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   5 +-
 3 files changed, 41 insertions(+), 132 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
index 7072d45f007b..fa1b66595024 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
@@ -601,14 +601,9 @@ static bool idpf_rx_singleq_test_staterr(const union virtchnl2_rx_desc *rx_desc,
 
 /**
  * idpf_rx_singleq_is_non_eop - process handling of non-EOP buffers
- * @rxq: Rx ring being processed
  * @rx_desc: Rx descriptor for current buffer
- * @skb: Current socket buffer containing buffer in progress
- * @ntc: next to clean
  */
-static bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
-				       union virtchnl2_rx_desc *rx_desc,
-				       struct sk_buff *skb, u16 ntc)
+static bool idpf_rx_singleq_is_non_eop(const union virtchnl2_rx_desc *rx_desc)
 {
 	/* if we are the last buffer then there is nothing else to do */
 	if (likely(idpf_rx_singleq_test_staterr(rx_desc, IDPF_RXD_EOF_SINGLEQ)))
@@ -843,9 +838,6 @@ static void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q,
 	struct libie_rx_ptype_parsed parsed =
 					rx_q->vport->rx_ptype_lkup[ptype];
 
-	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_q->vport->netdev);
-
 	/* Check if we're using base mode descriptor IDs */
 	if (rx_q->rxdids == VIRTCHNL2_RXDID_1_32B_BASE_M) {
 		idpf_rx_singleq_base_hash(rx_q, skb, rx_desc, parsed);
@@ -854,8 +846,6 @@ static void idpf_rx_singleq_process_skb_fields(struct idpf_queue *rx_q,
 		idpf_rx_singleq_flex_hash(rx_q, skb, rx_desc, parsed);
 		idpf_rx_singleq_flex_csum(rx_q, skb, rx_desc, parsed);
 	}
-
-	skb_record_rx_queue(skb, rx_q->idx);
 }
 
 /**
@@ -986,16 +976,19 @@ static void idpf_rx_singleq_extract_fields(struct idpf_queue *rx_q,
 static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
-	struct sk_buff *skb = rx_q->skb;
 	u16 ntc = rx_q->next_to_clean;
 	u16 cleaned_count = 0;
 	bool failure = false;
+	struct xdp_buff xdp;
+
+	libie_xdp_init_buff(&xdp, &rx_q->xdp, &rx_q->xdp_rxq);
 
 	/* Process Rx packets bounded by budget */
 	while (likely(total_rx_pkts < (unsigned int)budget)) {
 		struct idpf_rx_extracted fields = { };
 		union virtchnl2_rx_desc *rx_desc;
 		struct idpf_rx_buf *rx_buf;
+		struct sk_buff *skb;
 
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
 		rx_desc = &rx_q->rx[ntc];
@@ -1019,45 +1012,35 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 		idpf_rx_singleq_extract_fields(rx_q, rx_desc, &fields);
 
 		rx_buf = &rx_q->rx_buf.buf[ntc];
-		if (!libie_rx_sync_for_cpu(rx_buf, fields.size))
-			goto skip_data;
-
-		if (skb)
-			idpf_rx_add_frag(rx_buf, skb, fields.size);
-		else
-			skb = idpf_rx_build_skb(rx_buf, fields.size);
-
-		/* exit if we failed to retrieve a buffer */
-		if (!skb)
-			break;
-
-skip_data:
+		libie_xdp_process_buff(&xdp, rx_buf, fields.size);
 		rx_buf->page = NULL;
 
 		IDPF_SINGLEQ_BUMP_RING_IDX(rx_q, ntc);
 		cleaned_count++;
 
 		/* skip if it is non EOP desc */
-		if (idpf_rx_singleq_is_non_eop(rx_q, rx_desc, skb, ntc))
+		if (!xdp.data || idpf_rx_singleq_is_non_eop(rx_desc))
 			continue;
 
 #define IDPF_RXD_ERR_S FIELD_PREP(VIRTCHNL2_RX_BASE_DESC_QW1_ERROR_M, \
 				  VIRTCHNL2_RX_BASE_DESC_ERROR_RXE_M)
 		if (unlikely(idpf_rx_singleq_test_staterr(rx_desc,
 							  IDPF_RXD_ERR_S))) {
-			dev_kfree_skb_any(skb);
-			skb = NULL;
-			continue;
-		}
+drop_cont:
+			xdp_return_buff(&xdp);
+			xdp.data = NULL;
 
-		/* pad skb if needed (to make valid ethernet frame) */
-		if (eth_skb_pad(skb)) {
-			skb = NULL;
 			continue;
 		}
 
-		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		total_rx_bytes += xdp_get_buff_len(&xdp);
+		total_rx_pkts++;
+
+		skb = xdp_build_skb_from_buff(&xdp);
+		if (unlikely(!skb))
+			goto drop_cont;
+
+		xdp.data = NULL;
 
 		/* protocol */
 		idpf_rx_singleq_process_skb_fields(rx_q, skb,
@@ -1065,15 +1048,10 @@ static int idpf_rx_singleq_clean(struct idpf_queue *rx_q, int budget)
 
 		/* send completed skb up the stack */
 		napi_gro_receive(&rx_q->q_vector->napi, skb);
-		skb = NULL;
-
-		/* update budget accounting */
-		total_rx_pkts++;
 	}
 
-	rx_q->skb = skb;
-
 	rx_q->next_to_clean = ntc;
+	libie_xdp_save_buff(&rx_q->xdp, &xdp);
 
 	if (cleaned_count)
 		failure = idpf_rx_singleq_buf_hw_alloc_all(rx_q, cleaned_count);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index e7081b68bc7d..cbbb6bf85b19 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -390,9 +390,9 @@ static void idpf_rx_desc_rel(struct idpf_queue *rxq, bool bufq, s32 q_model)
 	if (!rxq)
 		return;
 
-	if (rxq->skb) {
-		dev_kfree_skb_any(rxq->skb);
-		rxq->skb = NULL;
+	if (rxq->xdp.data) {
+		xdp_return_buff(&rxq->xdp);
+		rxq->xdp.data = NULL;
 	}
 
 	if (bufq || !idpf_is_queue_model_split(q_model))
@@ -2971,8 +2971,6 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 	/* process RSS/hash */
 	idpf_rx_hash(rxq, skb, rx_desc, parsed);
 
-	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
-
 	if (FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M,
 		      le16_to_cpu(rx_desc->hdrlen_flags)))
 		return idpf_rx_rsc(rxq, skb, rx_desc, parsed);
@@ -2980,59 +2978,9 @@ static int idpf_rx_process_skb_fields(struct idpf_queue *rxq,
 	idpf_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
 	idpf_rx_csum(rxq, skb, csum_bits, parsed);
 
-	skb_record_rx_queue(skb, rxq->idx);
-
 	return 0;
 }
 
-/**
- * idpf_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag
- * @rx_buf: buffer containing page to add
- * @skb: sk_buff to place the data into
- * @size: packet length from rx_desc
- *
- * This function will add the data contained in rx_buf->page to the skb.
- * It will just attach the page as a frag to the skb.
- * The function will then update the page offset.
- */
-void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
-		      unsigned int size)
-{
-	u32 hr = rx_buf->page->pp->p.offset;
-
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
-			rx_buf->offset + hr, size, rx_buf->truesize);
-}
-
-/**
- * idpf_rx_build_skb - Allocate skb and populate it from header buffer
- * @buf: Rx buffer to pull data from
- * @size: the length of the packet
- *
- * This function allocates an skb. It then populates it with the page data from
- * the current receive descriptor, taking care to set up the skb correctly.
- */
-struct sk_buff *idpf_rx_build_skb(const struct libie_rx_buffer *buf, u32 size)
-{
-	u32 hr = buf->page->pp->p.offset;
-	struct sk_buff *skb;
-	void *va;
-
-	va = page_address(buf->page) + buf->offset;
-	net_prefetch(va + hr);
-
-	skb = napi_build_skb(va, buf->truesize);
-	if (unlikely(!skb))
-		return NULL;
-
-	skb_mark_for_recycle(skb);
-
-	skb_reserve(skb, hr);
-	__skb_put(skb, size);
-
-	return skb;
-}
-
 /**
  * idpf_rx_splitq_test_staterr - tests bits in Rx descriptor
  * status and error fields
@@ -3096,8 +3044,10 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 {
 	int total_rx_bytes = 0, total_rx_pkts = 0;
 	struct idpf_queue *rx_bufq = NULL;
-	struct sk_buff *skb = rxq->skb;
 	u16 ntc = rxq->next_to_clean;
+	struct xdp_buff xdp;
+
+	libie_xdp_init_buff(&xdp, &rxq->xdp, &rxq->xdp_rxq);
 
 	/* Process Rx packets bounded by budget */
 	while (likely(total_rx_pkts < budget)) {
@@ -3109,6 +3059,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		unsigned int pkt_len = 0;
 		unsigned int hdr_len = 0;
 		u16 gen_id, buf_id = 0;
+		struct sk_buff *skb;
 		int bufq_id;
 		 /* Header buffer overflow only valid for header split */
 		bool hbo;
@@ -3179,7 +3130,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 
 		hdr = &rx_bufq->rx_buf.hdr_buf[buf_id];
 
-		if (unlikely(!hdr_len && !skb)) {
+		if (unlikely(!hdr_len && !xdp.data)) {
 			hdr_len = idpf_rx_hsplit_wa(hdr, rx_buf, pkt_len);
 			pkt_len -= hdr_len;
 
@@ -3188,11 +3139,7 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 			u64_stats_update_end(&rxq->stats_sync);
 		}
 
-		if (libie_rx_sync_for_cpu(hdr, hdr_len)) {
-			skb = idpf_rx_build_skb(hdr, hdr_len);
-			if (!skb)
-				break;
-
+		if (libie_xdp_process_buff(&xdp, hdr, hdr_len)) {
 			u64_stats_update_begin(&rxq->stats_sync);
 			u64_stats_inc(&rxq->q_stats.rx.hsplit_pkts);
 			u64_stats_update_end(&rxq->stats_sync);
@@ -3201,55 +3148,42 @@ static int idpf_rx_splitq_clean(struct idpf_queue *rxq, int budget)
 		hdr->page = NULL;
 
 payload:
-		if (!libie_rx_sync_for_cpu(rx_buf, pkt_len))
-			goto skip_data;
-
-		if (skb)
-			idpf_rx_add_frag(rx_buf, skb, pkt_len);
-		else
-			skb = idpf_rx_build_skb(rx_buf, pkt_len);
-
-		/* exit if we failed to retrieve a buffer */
-		if (!skb)
-			break;
-
-skip_data:
+		libie_xdp_process_buff(&xdp, rx_buf, pkt_len);
 		rx_buf->page = NULL;
 
 		idpf_rx_post_buf_refill(refillq, buf_id);
 		IDPF_RX_BUMP_NTC(rxq, ntc);
 
 		/* skip if it is non EOP desc */
-		if (!idpf_rx_splitq_is_eop(rx_desc))
+		if (!xdp.data || !idpf_rx_splitq_is_eop(rx_desc))
 			continue;
 
-		/* pad skb if needed (to make valid ethernet frame) */
-		if (eth_skb_pad(skb)) {
-			skb = NULL;
+		total_rx_bytes += xdp_get_buff_len(&xdp);
+		total_rx_pkts++;
+
+		skb = xdp_build_skb_from_buff(&xdp);
+		if (unlikely(!skb)) {
+			xdp_return_buff(&xdp);
+			xdp.data = NULL;
+
 			continue;
 		}
 
-		/* probably a little skewed due to removing CRC */
-		total_rx_bytes += skb->len;
+		xdp.data = NULL;
 
 		/* protocol */
 		if (unlikely(idpf_rx_process_skb_fields(rxq, skb, rx_desc))) {
 			dev_kfree_skb_any(skb);
-			skb = NULL;
 			continue;
 		}
 
 		/* send completed skb up the stack */
 		napi_gro_receive(&rxq->q_vector->napi, skb);
-		skb = NULL;
-
-		/* update budget accounting */
-		total_rx_pkts++;
 	}
 
 	rxq->next_to_clean = ntc;
+	libie_xdp_save_buff(&rxq->xdp, &xdp);
 
-	rxq->skb = skb;
 	u64_stats_update_begin(&rxq->stats_sync);
 	u64_stats_add(&rxq->q_stats.rx.packets, total_rx_pkts);
 	u64_stats_add(&rxq->q_stats.rx.bytes, total_rx_bytes);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index b1c30795f376..318241020347 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -640,7 +640,7 @@ struct idpf_queue {
 			struct xdp_rxq_info xdp_rxq;
 
 			struct bpf_prog __rcu *xdp_prog;
-			struct sk_buff *skb;
+			struct xdp_buff xdp;
 		};
 
 		/* Tx */
@@ -918,9 +918,6 @@ int idpf_config_rss(struct idpf_vport *vport);
 int idpf_init_rss(struct idpf_vport *vport);
 void idpf_deinit_rss(struct idpf_vport *vport);
 int idpf_rx_bufs_init_all(struct idpf_vport *vport);
-void idpf_rx_add_frag(struct idpf_rx_buf *rx_buf, struct sk_buff *skb,
-		      unsigned int size);
-struct sk_buff *idpf_rx_build_skb(const struct libie_rx_buffer *buf, u32 size);
 bool idpf_init_rx_buf_hw_alloc(struct idpf_queue *rxq, struct idpf_rx_buf *buf);
 void idpf_rx_buf_hw_update(struct idpf_queue *rxq, u32 val);
 void idpf_tx_buf_hw_update(struct idpf_queue *tx_q, u32 val,
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
