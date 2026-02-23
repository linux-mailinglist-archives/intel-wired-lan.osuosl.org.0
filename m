Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMD0LooqnGlgAQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 11:23:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F616174C84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 11:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3B1C40AB1;
	Mon, 23 Feb 2026 10:23:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vH8LFD0EY-Oc; Mon, 23 Feb 2026 10:23:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C4CD40C13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771842183;
	bh=IwfJUnAox4SH5YTWScB40dvjvb+11ihbzjJ1RF2n40w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d+On3U4LmiipUsCm41ZN459BLSzz4FsciFpkvOs7JE0ZcUiGe8NqqrXOWOG0n5yPE
	 /uvuy3Ksv/KS7cPCPC+DCdwvMZ+I84+OCvlHDIkerA1W6Gh4yDy+tVNyMZ/e0Z0hbv
	 vQD1A9QyoPnMbnCOaV+yI9jrLVD8RNMQO3kKtTIG7tcFyxp5CQiBbcr7QzG4A8QK9u
	 pcntR97rcOxeiZBj0nXNSOtnkZLmT0jT38rv90G5xGAg8zqYodYHHlJJvHCwuVrWtM
	 vJXJdPm1Rs6X/HK27gW2j2Q88drV1/T+AdjYcoIW+n+BmXQxn9EI4z/tJBJBy7Jq22
	 BVkGPfuv1QC/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C4CD40C13;
	Mon, 23 Feb 2026 10:23:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B45921CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A6FC40A99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJXi6TsCfHQG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 10:23:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C55E40AB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C55E40AB1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C55E40AB1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:00 +0000 (UTC)
X-CSE-ConnectionGUID: xE4AIg68RWKkD9Knl1Ij2Q==
X-CSE-MsgGUID: 8l+1jJ8KTrqj76YY7lZ3/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="76444749"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="76444749"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:23:00 -0800
X-CSE-ConnectionGUID: 2natCC0eSxSTFc03Scs+RA==
X-CSE-MsgGUID: ReghT47FT/SiBpw+7gAAyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="246121777"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 23 Feb 2026 02:22:55 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 45FC228167;
 Mon, 23 Feb 2026 10:22:53 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 23 Feb 2026 10:52:13 +0100
Message-ID: <20260223095222.3205363-7-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260223095222.3205363-1-larysa.zaremba@intel.com>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771842181; x=1803378181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IW7Yf0xrzs0mSLEDfq/1qgfiyE7Di26Urd5rJdJkYMQ=;
 b=XkHSMJVjnfQKdSVnxTJgzh8lZnlk8jQG4vw75UXCn8LH5MP/p7UJnG3b
 ZCWoP/GatErJxapLKIc/3SQn/ecpm60NgmF9A089ZLfsuCDHWHFCunml8
 +XpmLfA7KQctC0TINkjjGEnKpdydIX0tNh5oiXh9lfpSAqoRmmOvRkqLU
 o42Epx1KwKUy5E3kPWwPb/DpPpTshIVvH6wiZa2mIHGzE2X6RMlE3ZZzm
 vJuVid1eCaXU1ComZW1L+tji8Ng/E93RpLbPlrv4Avoc1O572kasNm05n
 Hqo1oJSUYaCZ8E4D7pTQGq9CnXuyvtgqF+dRYLWwKQeZYweqpEJb1/IWw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XkHSMJVj
Subject: [Intel-wired-lan] [PATCH iwl-next 06/10] ixgbevf: XDP_TX in
 multi-buffer through libeth
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 5F616174C84
X-Rspamd-Action: no action

Use libeth to support XDP_TX action for segmented packets.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  14 +-
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 294 ++++++++++++------
 2 files changed, 200 insertions(+), 108 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index eada53c57fcf..67d10e6e9910 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -82,20 +82,22 @@ struct ixgbevf_ring {
 	struct net_device *netdev;
 	struct bpf_prog *xdp_prog;
 	union {
-		struct page_pool *pp;	/* Rx ring */
+		struct page_pool *pp;	/* Rx and XDP rings */
 		struct device *dev;	/* Tx ring */
 	};
 	void *desc;			/* descriptor ring memory */
-	dma_addr_t dma;			/* phys. address of descriptor ring */
-	unsigned int size;		/* length in bytes */
-	u32 truesize;			/* Rx buffer full size */
+	union {
+		u32 truesize;		/* Rx buffer full size */
+		u32 pending;		/* Sent-not-completed descriptors */
+	};
 	u16 count;			/* amount of descriptors */
-	u16 next_to_use;
 	u16 next_to_clean;
+	u32 next_to_use;
 
 	union {
 		struct libeth_fqe *rx_fqes;
 		struct ixgbevf_tx_buffer *tx_buffer_info;
+		struct libeth_sqe *xdp_sqes;
 	};
 	unsigned long state;
 	struct ixgbevf_stats stats;
@@ -115,6 +117,8 @@ struct ixgbevf_ring {
 	int queue_index; /* needed for multiqueue queue management */
 	u32 rx_buf_len;
 	struct libeth_xdp_buff_stash xdp_stash;
+	unsigned int dma_size;		/* length in bytes */
+	dma_addr_t dma;			/* phys. address of descriptor ring */
 } ____cacheline_internodealigned_in_smp;
 
 /* How many Rx Buffers do we bundle into one write to the hardware ? */
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 558a4fad543a..6be2390daeba 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -306,10 +306,7 @@ static bool ixgbevf_clean_tx_irq(struct ixgbevf_q_vector *q_vector,
 			total_ipsec++;
 
 		/* free the skb */
-		if (ring_is_xdp(tx_ring))
-			libeth_xdp_return_va(tx_buffer->data, true);
-		else
-			napi_consume_skb(tx_buffer->skb, napi_budget);
+		napi_consume_skb(tx_buffer->skb, napi_budget);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -392,9 +389,8 @@ static bool ixgbevf_clean_tx_irq(struct ixgbevf_q_vector *q_vector,
 		       eop_desc, (eop_desc ? eop_desc->wb.status : 0),
 		       tx_ring->tx_buffer_info[i].time_stamp, jiffies);
 
-		if (!ring_is_xdp(tx_ring))
-			netif_stop_subqueue(tx_ring->netdev,
-					    tx_ring->queue_index);
+		netif_stop_subqueue(tx_ring->netdev,
+				    tx_ring->queue_index);
 
 		/* schedule immediate reset if we believe we hung */
 		ixgbevf_tx_timeout_reset(adapter);
@@ -402,9 +398,6 @@ static bool ixgbevf_clean_tx_irq(struct ixgbevf_q_vector *q_vector,
 		return true;
 	}
 
-	if (ring_is_xdp(tx_ring))
-		return !!budget;
-
 #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
 	if (unlikely(total_packets && netif_carrier_ok(tx_ring->netdev) &&
 		     (ixgbevf_desc_unused(tx_ring) >= TX_WAKE_THRESHOLD))) {
@@ -660,44 +653,83 @@ static inline void ixgbevf_irq_enable_queues(struct ixgbevf_adapter *adapter,
 #define IXGBEVF_XDP_CONSUMED 1
 #define IXGBEVF_XDP_TX 2
 
-static int ixgbevf_xmit_xdp_ring(struct ixgbevf_ring *ring,
-				 struct xdp_buff *xdp)
+static void ixgbevf_clean_xdp_num(struct ixgbevf_ring *xdp_ring, bool in_napi,
+				  u16 to_clean)
+{
+	struct libeth_xdpsq_napi_stats stats = { };
+	u32 ntc = xdp_ring->next_to_clean;
+	struct xdp_frame_bulk cbulk;
+	struct libeth_cq_pp cp = {
+		.bq = &cbulk,
+		.dev = xdp_ring->dev,
+		.xss = &stats,
+		.napi = in_napi,
+	};
+
+	xdp_frame_bulk_init(&cbulk);
+	xdp_ring->pending -= to_clean;
+
+	while (likely(to_clean--)) {
+		libeth_xdp_complete_tx(&xdp_ring->xdp_sqes[ntc], &cp);
+		ntc++;
+		ntc = unlikely(ntc == xdp_ring->count) ? 0 : ntc;
+	}
+
+	xdp_ring->next_to_clean = ntc;
+	xdp_flush_frame_bulk(&cbulk);
+}
+
+static u16 ixgbevf_tx_get_num_sent(struct ixgbevf_ring *xdp_ring)
 {
-	struct ixgbevf_tx_buffer *tx_buffer;
-	union ixgbe_adv_tx_desc *tx_desc;
-	u32 len, cmd_type;
-	dma_addr_t dma;
-	u16 i;
+	u16 ntc = xdp_ring->next_to_clean;
+	u16 to_clean = 0;
 
-	len = xdp->data_end - xdp->data;
+	while (likely(to_clean < xdp_ring->pending)) {
+		u32 idx = xdp_ring->xdp_sqes[ntc].rs_idx;
+		union ixgbe_adv_tx_desc *rs_desc;
 
-	if (unlikely(!ixgbevf_desc_unused(ring)))
-		return IXGBEVF_XDP_CONSUMED;
+		if (!idx--)
+			break;
 
-	dma = dma_map_single(ring->dev, xdp->data, len, DMA_TO_DEVICE);
-	if (dma_mapping_error(ring->dev, dma))
-		return IXGBEVF_XDP_CONSUMED;
+		rs_desc = IXGBEVF_TX_DESC(xdp_ring, idx);
 
-	/* record the location of the first descriptor for this packet */
-	i = ring->next_to_use;
-	tx_buffer = &ring->tx_buffer_info[i];
-
-	dma_unmap_len_set(tx_buffer, len, len);
-	dma_unmap_addr_set(tx_buffer, dma, dma);
-	tx_buffer->data = xdp->data;
-	tx_buffer->bytecount = len;
-	tx_buffer->gso_segs = 1;
-	tx_buffer->protocol = 0;
-
-	/* Populate minimal context descriptor that will provide for the
-	 * fact that we are expected to process Ethernet frames.
-	 */
-	if (!test_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state)) {
+		if (!(rs_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
+			break;
+
+		xdp_ring->xdp_sqes[ntc].rs_idx = 0;
+
+		to_clean +=
+			(idx >= ntc ? idx : idx + xdp_ring->count) - ntc + 1;
+
+		ntc = (idx + 1 == xdp_ring->count) ? 0 : idx + 1;
+	}
+
+	return to_clean;
+}
+
+static void ixgbevf_clean_xdp_ring(struct ixgbevf_ring *xdp_ring)
+{
+	ixgbevf_clean_xdp_num(xdp_ring, false, xdp_ring->pending);
+}
+
+static u32 ixgbevf_prep_xdp_sq(void *xdpsq, struct libeth_xdpsq *sq)
+{
+	struct ixgbevf_ring *xdp_ring = xdpsq;
+
+	if (unlikely(ixgbevf_desc_unused(xdp_ring) < LIBETH_XDP_TX_BULK)) {
+		u16 to_clean = ixgbevf_tx_get_num_sent(xdp_ring);
+
+		if (likely(to_clean))
+			ixgbevf_clean_xdp_num(xdp_ring, true, to_clean);
+	}
+
+	if (unlikely(!test_bit(__IXGBEVF_TX_XDP_RING_PRIMED,
+			       &xdp_ring->state))) {
 		struct ixgbe_adv_tx_context_desc *context_desc;
 
-		set_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);
+		set_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &xdp_ring->state);
 
-		context_desc = IXGBEVF_TX_CTXTDESC(ring, 0);
+		context_desc = IXGBEVF_TX_CTXTDESC(xdp_ring, 0);
 		context_desc->vlan_macip_lens	=
 			cpu_to_le32(ETH_HLEN << IXGBE_ADVTXD_MACLEN_SHIFT);
 		context_desc->fceof_saidx	= 0;
@@ -706,48 +738,98 @@ static int ixgbevf_xmit_xdp_ring(struct ixgbevf_ring *ring,
 				    IXGBE_ADVTXD_DTYP_CTXT);
 		context_desc->mss_l4len_idx	= 0;
 
-		i = 1;
+		xdp_ring->next_to_use = 1;
+		xdp_ring->pending = 1;
+
+		/* Finish descriptor writes before bumping tail */
+		wmb();
+		ixgbevf_write_tail(xdp_ring, 1);
 	}
 
-	/* put descriptor type bits */
-	cmd_type = IXGBE_ADVTXD_DTYP_DATA |
-		   IXGBE_ADVTXD_DCMD_DEXT |
-		   IXGBE_ADVTXD_DCMD_IFCS;
-	cmd_type |= len | IXGBE_TXD_CMD;
+	*sq = (struct libeth_xdpsq) {
+		.count = xdp_ring->count,
+		.descs = xdp_ring->desc,
+		.lock = NULL,
+		.ntu = &xdp_ring->next_to_use,
+		.pending = &xdp_ring->pending,
+		.pool = NULL,
+		.sqes = xdp_ring->xdp_sqes,
+	};
+
+	return ixgbevf_desc_unused(xdp_ring);
+}
 
-	tx_desc = IXGBEVF_TX_DESC(ring, i);
-	tx_desc->read.buffer_addr = cpu_to_le64(dma);
+static void ixgbevf_xdp_xmit_desc(struct libeth_xdp_tx_desc desc, u32 i,
+				  const struct libeth_xdpsq *sq,
+				  u64 priv)
+{
+	union ixgbe_adv_tx_desc *tx_desc =
+		&((union ixgbe_adv_tx_desc *)sq->descs)[i];
 
-	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
-	tx_desc->read.olinfo_status =
-			cpu_to_le32((len << IXGBE_ADVTXD_PAYLEN_SHIFT) |
+	u32 cmd_type = IXGBE_ADVTXD_DTYP_DATA |
+		       IXGBE_ADVTXD_DCMD_DEXT |
+		       IXGBE_ADVTXD_DCMD_IFCS |
+		       desc.len;
+
+	if (desc.flags & LIBETH_XDP_TX_LAST)
+		cmd_type |= IXGBE_TXD_CMD_EOP;
+
+	if (desc.flags & LIBETH_XDP_TX_FIRST) {
+		struct skb_shared_info *sinfo = sq->sqes[i].sinfo;
+		u16 full_len = desc.len + sinfo->xdp_frags_size;
+
+		tx_desc->read.olinfo_status =
+			cpu_to_le32((full_len << IXGBE_ADVTXD_PAYLEN_SHIFT) |
 				    IXGBE_ADVTXD_CC);
+	}
 
-	/* Avoid any potential race with cleanup */
-	smp_wmb();
+	tx_desc->read.buffer_addr = cpu_to_le64(desc.addr);
+	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
+}
 
-	/* set next_to_watch value indicating a packet is present */
-	i++;
-	if (i == ring->count)
-		i = 0;
+LIBETH_XDP_DEFINE_START();
+LIBETH_XDP_DEFINE_FLUSH_TX(static ixgbevf_xdp_flush_tx, ixgbevf_prep_xdp_sq,
+			   ixgbevf_xdp_xmit_desc);
+LIBETH_XDP_DEFINE_END();
 
-	tx_buffer->next_to_watch = tx_desc;
-	ring->next_to_use = i;
+static void ixgbevf_xdp_set_rs(struct ixgbevf_ring *xdp_ring, u32 cached_ntu)
+{
+	u32 ltu = (xdp_ring->next_to_use ? : xdp_ring->count) - 1;
+	union ixgbe_adv_tx_desc *desc;
 
-	return IXGBEVF_XDP_TX;
+	desc = IXGBEVF_TX_DESC(xdp_ring, ltu);
+	xdp_ring->xdp_sqes[cached_ntu].rs_idx = ltu + 1;
+	desc->read.cmd_type_len |= cpu_to_le32(IXGBE_TXD_CMD);
 }
 
-static int ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
-			   struct ixgbevf_ring *rx_ring,
+static void ixgbevf_rx_finalize_xdp(struct libeth_xdp_tx_bulk *tx_bulk,
+				    bool xdp_xmit, u32 cached_ntu)
+{
+	struct ixgbevf_ring *xdp_ring = tx_bulk->xdpsq;
+
+	if (!xdp_xmit)
+		goto unlock;
+
+	if (tx_bulk->count)
+		ixgbevf_xdp_flush_tx(tx_bulk, LIBETH_XDP_TX_DROP);
+
+	ixgbevf_xdp_set_rs(xdp_ring, cached_ntu);
+
+	/* Finish descriptor writes before bumping tail */
+	wmb();
+	ixgbevf_write_tail(xdp_ring, xdp_ring->next_to_use);
+unlock:
+	rcu_read_unlock();
+}
+
+static int ixgbevf_run_xdp(struct libeth_xdp_tx_bulk *tx_bulk,
 			   struct libeth_xdp_buff *xdp)
 {
 	int result = IXGBEVF_XDP_PASS;
-	struct ixgbevf_ring *xdp_ring;
-	struct bpf_prog *xdp_prog;
+	const struct bpf_prog *xdp_prog;
 	u32 act;
 
-	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
-
+	xdp_prog = tx_bulk->prog;
 	if (!xdp_prog)
 		goto xdp_out;
 
@@ -756,17 +838,16 @@ static int ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
 	case XDP_PASS:
 		break;
 	case XDP_TX:
-		xdp_ring = adapter->xdp_ring[rx_ring->queue_index];
-		result = ixgbevf_xmit_xdp_ring(xdp_ring, &xdp->base);
-		if (result == IXGBEVF_XDP_CONSUMED)
-			goto out_failure;
+		result = IXGBEVF_XDP_TX;
+		if (!libeth_xdp_tx_queue_bulk(tx_bulk, xdp,
+					      ixgbevf_xdp_flush_tx))
+			result = IXGBEVF_XDP_CONSUMED;
 		break;
 	default:
-		bpf_warn_invalid_xdp_action(rx_ring->netdev, xdp_prog, act);
+		bpf_warn_invalid_xdp_action(tx_bulk->dev, xdp_prog, act);
 		fallthrough;
 	case XDP_ABORTED:
-out_failure:
-		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
+		trace_xdp_exception(tx_bulk->dev, xdp_prog, act);
 		fallthrough; /* handle aborts by dropping packet */
 	case XDP_DROP:
 		result = IXGBEVF_XDP_CONSUMED;
@@ -784,11 +865,19 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	struct ixgbevf_adapter *adapter = q_vector->adapter;
 	u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
+	LIBETH_XDP_ONSTACK_BULK(xdp_tx_bulk);
 	LIBETH_XDP_ONSTACK_BUFF(xdp);
+	u32 cached_ntu;
 	bool xdp_xmit = false;
 	int xdp_res = 0;
 
 	libeth_xdp_init_buff(xdp, &rx_ring->xdp_stash, &rx_ring->xdp_rxq);
+	libeth_xdp_tx_init_bulk(&xdp_tx_bulk, rx_ring->xdp_prog,
+				adapter->netdev, adapter->xdp_ring,
+				adapter->num_xdp_queues);
+	if (xdp_tx_bulk.prog)
+		cached_ntu =
+			((struct ixgbevf_ring *)xdp_tx_bulk.xdpsq)->next_to_use;
 
 	while (likely(total_rx_packets < budget)) {
 		union ixgbe_adv_rx_desc *rx_desc;
@@ -821,11 +910,12 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		if (ixgbevf_is_non_eop(rx_ring, rx_desc))
 			continue;
 
-		xdp_res = ixgbevf_run_xdp(adapter, rx_ring, xdp);
+		xdp_res = ixgbevf_run_xdp(&xdp_tx_bulk, xdp);
 		if (xdp_res) {
 			if (xdp_res == IXGBEVF_XDP_TX)
 				xdp_xmit = true;
 
+			xdp->data = NULL;
 			total_rx_packets++;
 			total_rx_bytes += size;
 			continue;
@@ -870,16 +960,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	/* place incomplete frames back on ring for completion */
 	libeth_xdp_save_buff(&rx_ring->xdp_stash, xdp);
 
-	if (xdp_xmit) {
-		struct ixgbevf_ring *xdp_ring =
-			adapter->xdp_ring[rx_ring->queue_index];
-
-		/* Force memory writes to complete before letting h/w
-		 * know there are new descriptors to fetch.
-		 */
-		wmb();
-		ixgbevf_write_tail(xdp_ring, xdp_ring->next_to_use);
-	}
+	ixgbevf_rx_finalize_xdp(&xdp_tx_bulk, xdp_xmit, cached_ntu);
 
 	u64_stats_update_begin(&rx_ring->syncp);
 	rx_ring->stats.packets += total_rx_packets;
@@ -909,6 +990,8 @@ static int ixgbevf_poll(struct napi_struct *napi, int budget)
 	bool clean_complete = true;
 
 	ixgbevf_for_each_ring(ring, q_vector->tx) {
+		if (ring_is_xdp(ring))
+			continue;
 		if (!ixgbevf_clean_tx_irq(q_vector, ring, budget))
 			clean_complete = false;
 	}
@@ -1348,6 +1431,7 @@ static void ixgbevf_configure_tx_ring(struct ixgbevf_adapter *adapter,
 	/* reset ntu and ntc to place SW in sync with hardwdare */
 	ring->next_to_clean = 0;
 	ring->next_to_use = 0;
+	ring->pending = 0;
 
 	/* In order to avoid issues WTHRESH + PTHRESH should always be equal
 	 * to or less than the number of on chip descriptors, which is
@@ -1360,8 +1444,12 @@ static void ixgbevf_configure_tx_ring(struct ixgbevf_adapter *adapter,
 		   32;           /* PTHRESH = 32 */
 
 	/* reinitialize tx_buffer_info */
-	memset(ring->tx_buffer_info, 0,
-	       sizeof(struct ixgbevf_tx_buffer) * ring->count);
+	if (!ring_is_xdp(ring))
+		memset(ring->tx_buffer_info, 0,
+		       sizeof(struct ixgbevf_tx_buffer) * ring->count);
+	else
+		memset(ring->xdp_sqes, 0,
+		       sizeof(struct libeth_sqe) * ring->count);
 
 	clear_bit(__IXGBEVF_HANG_CHECK_ARMED, &ring->state);
 	clear_bit(__IXGBEVF_TX_XDP_RING_PRIMED, &ring->state);
@@ -2016,10 +2104,7 @@ static void ixgbevf_clean_tx_ring(struct ixgbevf_ring *tx_ring)
 		union ixgbe_adv_tx_desc *eop_desc, *tx_desc;
 
 		/* Free all the Tx ring sk_buffs */
-		if (ring_is_xdp(tx_ring))
-			libeth_xdp_return_va(tx_buffer->data, false);
-		else
-			dev_kfree_skb_any(tx_buffer->skb);
+		dev_kfree_skb_any(tx_buffer->skb);
 
 		/* unmap skb header data */
 		dma_unmap_single(tx_ring->dev,
@@ -2088,7 +2173,7 @@ static void ixgbevf_clean_all_tx_rings(struct ixgbevf_adapter *adapter)
 	for (i = 0; i < adapter->num_tx_queues; i++)
 		ixgbevf_clean_tx_ring(adapter->tx_ring[i]);
 	for (i = 0; i < adapter->num_xdp_queues; i++)
-		ixgbevf_clean_tx_ring(adapter->xdp_ring[i]);
+		ixgbevf_clean_xdp_ring(adapter->xdp_ring[i]);
 }
 
 void ixgbevf_down(struct ixgbevf_adapter *adapter)
@@ -2834,8 +2919,6 @@ static void ixgbevf_check_hang_subtask(struct ixgbevf_adapter *adapter)
 	if (netif_carrier_ok(adapter->netdev)) {
 		for (i = 0; i < adapter->num_tx_queues; i++)
 			set_check_for_tx_hang(adapter->tx_ring[i]);
-		for (i = 0; i < adapter->num_xdp_queues; i++)
-			set_check_for_tx_hang(adapter->xdp_ring[i]);
 	}
 
 	/* get one bit for every active Tx/Rx interrupt vector */
@@ -2979,7 +3062,10 @@ static void ixgbevf_service_task(struct work_struct *work)
  **/
 void ixgbevf_free_tx_resources(struct ixgbevf_ring *tx_ring)
 {
-	ixgbevf_clean_tx_ring(tx_ring);
+	if (!ring_is_xdp(tx_ring))
+		ixgbevf_clean_tx_ring(tx_ring);
+	else
+		ixgbevf_clean_xdp_ring(tx_ring);
 
 	vfree(tx_ring->tx_buffer_info);
 	tx_ring->tx_buffer_info = NULL;
@@ -2988,7 +3074,7 @@ void ixgbevf_free_tx_resources(struct ixgbevf_ring *tx_ring)
 	if (!tx_ring->desc)
 		return;
 
-	dma_free_coherent(tx_ring->dev, tx_ring->size, tx_ring->desc,
+	dma_free_coherent(tx_ring->dev, tx_ring->dma_size, tx_ring->desc,
 			  tx_ring->dma);
 
 	tx_ring->desc = NULL;
@@ -3023,7 +3109,9 @@ int ixgbevf_setup_tx_resources(struct ixgbevf_ring *tx_ring)
 	struct ixgbevf_adapter *adapter = netdev_priv(tx_ring->netdev);
 	int size;
 
-	size = sizeof(struct ixgbevf_tx_buffer) * tx_ring->count;
+	size = (!ring_is_xdp(tx_ring) ? sizeof(struct ixgbevf_tx_buffer) :
+		sizeof(struct libeth_sqe)) * tx_ring->count;
+
 	tx_ring->tx_buffer_info = vmalloc(size);
 	if (!tx_ring->tx_buffer_info)
 		goto err;
@@ -3031,10 +3119,10 @@ int ixgbevf_setup_tx_resources(struct ixgbevf_ring *tx_ring)
 	u64_stats_init(&tx_ring->syncp);
 
 	/* round up to nearest 4K */
-	tx_ring->size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
-	tx_ring->size = ALIGN(tx_ring->size, 4096);
+	tx_ring->dma_size = tx_ring->count * sizeof(union ixgbe_adv_tx_desc);
+	tx_ring->dma_size = ALIGN(tx_ring->dma_size, 4096);
 
-	tx_ring->desc = dma_alloc_coherent(tx_ring->dev, tx_ring->size,
+	tx_ring->desc = dma_alloc_coherent(tx_ring->dev, tx_ring->dma_size,
 					   &tx_ring->dma, GFP_KERNEL);
 	if (!tx_ring->desc)
 		goto err;
@@ -3123,10 +3211,10 @@ int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
 	u64_stats_init(&rx_ring->syncp);
 
 	/* Round up to nearest 4K */
-	rx_ring->size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
-	rx_ring->size = ALIGN(rx_ring->size, 4096);
+	rx_ring->dma_size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
+	rx_ring->dma_size = ALIGN(rx_ring->dma_size, 4096);
 
-	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->size,
+	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->dma_size,
 					   &rx_ring->dma, GFP_KERNEL);
 
 	if (!rx_ring->desc)
@@ -3200,7 +3288,7 @@ void ixgbevf_free_rx_resources(struct ixgbevf_ring *rx_ring)
 	xdp_rxq_info_detach_mem_model(&rx_ring->xdp_rxq);
 	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 
-	dma_free_coherent(fq.pp->p.dev, rx_ring->size, rx_ring->desc,
+	dma_free_coherent(fq.pp->p.dev, rx_ring->dma_size, rx_ring->desc,
 			  rx_ring->dma);
 	rx_ring->desc = NULL;
 
-- 
2.52.0

