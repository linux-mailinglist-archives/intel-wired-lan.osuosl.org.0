Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJw5MI8qnGloAQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 11:23:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79782174CA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 11:23:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2E268429D;
	Mon, 23 Feb 2026 10:23:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fp3e_WfLNpqI; Mon, 23 Feb 2026 10:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63F5084287
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771842189;
	bh=dKHBnB+3LL2mWzgMyrd9s6wqHk5Zm2DYsfrDOzlRvmk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J8LCUGI8+gAhJ7BhL5HNVHHnt9GHt+eL+pZZ4d2p+QpLuyMOBjL2hRUWiVNg7Odik
	 Zh4tmqXz11jfS+Lb2Gg6oXL4sojhoxaTVGBcmQNl1mHhlE/7bVGlxb6kNJFfZNRjUV
	 z4IwTsGfDm9ZeSxGvFHcRKsIjxM6wmpru//vp3Du1Lrfb2JQ7gL//2kj51nQs7OKPP
	 z5u6Gm7mBz9ddElBQsI6kEkt4fSkMWRu5A7AERxKc1o2ZRbqbbtS/hUHXQBG4xKXTE
	 pOlkgrcbTUxeyMJhgyEgcg9TxhmGBwsUGzoYflW01JEgRhuH+WBKWKks4e6gG6/5Nk
	 GLKYlhnjeAOHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63F5084287;
	Mon, 23 Feb 2026 10:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C51381CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB12040C45
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6noE0sJGxJMC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 10:23:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AE0D440AAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE0D440AAB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE0D440AAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 10:23:06 +0000 (UTC)
X-CSE-ConnectionGUID: SzI0RR7uS7OucrzRFEAVzQ==
X-CSE-MsgGUID: TSrAJt9+R/GOAGBEeyaj7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="76444787"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="76444787"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:23:06 -0800
X-CSE-ConnectionGUID: h55ZlWndR0CzyqnrO28iRA==
X-CSE-MsgGUID: ALdrkKSoSUag68C8BkGV8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="246121851"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 23 Feb 2026 02:23:02 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3551228167;
 Mon, 23 Feb 2026 10:23:00 +0000 (GMT)
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
Date: Mon, 23 Feb 2026 10:52:16 +0100
Message-ID: <20260223095222.3205363-10-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260223095222.3205363-1-larysa.zaremba@intel.com>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771842187; x=1803378187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xHK7gGAYeq7rlJbOwKq4LBEKAz7MjueTP+xH9HaTUkM=;
 b=NqFHYVpb7YR7jN1BM89Nj0x+tqpDbxQAdXBAcGwKKrfcDTLbUa9bQQZb
 2SYMP4qQTQZ+ydFhKCOoJCBlisqPxE20o5kE4FSGFXAEKayWkg54L80Vm
 fQMVSjtR1gnAgD6BKziRq9RrogPon/RKHk+jpnzbjxCTXVVqwXcgy6BB1
 eBsSsHAgOQFYiSSPMbTWSJ3bWMjHo3TqMpQpeI+e/5/zfnFe4bzcXCEZ2
 UprOjUCCXYdqiG9L8u7M0qVB0KZlh0d+A7/mNOy3m1DkAcJ+O3tV3+xZF
 AWUXCPS+ZWshPeUAfm6tmpxtMEut1AEwUwG09fUspHLdZkIUn32B4AAgL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NqFHYVpb
Subject: [Intel-wired-lan] [PATCH iwl-next 09/10] ixgbevf: reconfigure page
 pool when reallocating buffers
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 79782174CA1
X-Rspamd-Action: no action

Currently, when MTU is changed, page pool is not reconfigured, which leads
to usage of suboptimal buffer sizes.

Always destroy page pool when cleaning the ring up and create it anew when
we first allocate Rx buffers.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 69 +++++++++----------
 1 file changed, 33 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 790e86135fbd..606c6123d7eb 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1660,6 +1660,12 @@ static void ixgbevf_rx_destroy_pp(struct ixgbevf_ring *rx_ring)
 		.fqes	= rx_ring->rx_fqes,
 	};
 
+	if (!fq.pp)
+		return;
+
+	xdp_rxq_info_detach_mem_model(&rx_ring->xdp_rxq);
+	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
+
 	libeth_rx_fq_destroy(&fq);
 	rx_ring->rx_fqes = NULL;
 	rx_ring->pp = NULL;
@@ -1710,6 +1716,14 @@ static int ixgbevf_rx_create_pp(struct ixgbevf_ring *rx_ring)
 	rx_ring->truesize = fq.truesize;
 	rx_ring->rx_buf_len = fq.buf_len;
 
+	/* XDP RX-queue info */
+	ret = __xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
+				 rx_ring->queue_index, 0, rx_ring->truesize);
+	if (ret)
+		goto err;
+
+	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, rx_ring->pp);
+
 	if (!fq.hsplit)
 		return 0;
 
@@ -1779,6 +1793,8 @@ static void ixgbevf_configure_rx_ring(struct ixgbevf_adapter *adapter,
 	ring->next_to_clean = 0;
 	ring->next_to_use = 0;
 
+	ixgbevf_rx_create_pp(ring);
+
 	/* RXDCTL.RLPML does not work on 82599 */
 	if (adapter->hw.mac.type != ixgbe_mac_82599_vf) {
 		u32 pkt_len =
@@ -2271,8 +2287,10 @@ static void ixgbevf_clean_all_rx_rings(struct ixgbevf_adapter *adapter)
 {
 	int i;
 
-	for (i = 0; i < adapter->num_rx_queues; i++)
+	for (i = 0; i < adapter->num_rx_queues; i++) {
 		ixgbevf_clean_rx_ring(adapter->rx_ring[i]);
+		ixgbevf_rx_destroy_pp(adapter->rx_ring[i]);
+	}
 }
 
 /**
@@ -3293,6 +3311,11 @@ static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
 	return err;
 }
 
+static struct device *ixgbevf_dma_dev_from_ring(struct ixgbevf_ring *ring)
+{
+	return &ring->q_vector->adapter->pdev->dev;
+}
+
 /**
  * ixgbevf_setup_rx_resources - allocate Rx resources
  * @adapter: board private structure
@@ -3303,41 +3326,25 @@ static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
 int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
 			       struct ixgbevf_ring *rx_ring)
 {
-	int ret;
-
-	ret = ixgbevf_rx_create_pp(rx_ring);
-	if (ret)
-		return ret;
-
 	u64_stats_init(&rx_ring->syncp);
 
 	/* Round up to nearest 4K */
 	rx_ring->dma_size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
 	rx_ring->dma_size = ALIGN(rx_ring->dma_size, 4096);
 
-	rx_ring->desc = dma_alloc_coherent(rx_ring->pp->p.dev,
+	rx_ring->desc = dma_alloc_coherent(ixgbevf_dma_dev_from_ring(rx_ring),
 					   rx_ring->dma_size,
 					   &rx_ring->dma, GFP_KERNEL);
 
-	if (!rx_ring->desc)
-		goto err;
-
-	/* XDP RX-queue info */
-	ret = __xdp_rxq_info_reg(&rx_ring->xdp_rxq, adapter->netdev,
-				 rx_ring->queue_index, 0, rx_ring->truesize);
-	if (ret)
-		goto err;
-
-	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, rx_ring->pp);
+	if (!rx_ring->desc) {
+		dev_err(rx_ring->dev,
+			"Unable to allocate memory for the Rx descriptor ring\n");
+		return -ENOMEM;
+	}
 
 	rx_ring->xdp_prog = adapter->xdp_prog;
 
 	return 0;
-err:
-	ixgbevf_rx_destroy_pp(rx_ring);
-	dev_err(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
-
-	return ret;
 }
 
 /**
@@ -3378,24 +3385,14 @@ static int ixgbevf_setup_all_rx_resources(struct ixgbevf_adapter *adapter)
  **/
 void ixgbevf_free_rx_resources(struct ixgbevf_ring *rx_ring)
 {
-	struct libeth_fq fq = {
-		.fqes	= rx_ring->rx_fqes,
-		.pp	= rx_ring->pp,
-	};
-
 	ixgbevf_clean_rx_ring(rx_ring);
-
+	ixgbevf_rx_destroy_pp(rx_ring);
 	rx_ring->xdp_prog = NULL;
-	xdp_rxq_info_detach_mem_model(&rx_ring->xdp_rxq);
-	xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 
-	dma_free_coherent(fq.pp->p.dev, rx_ring->dma_size, rx_ring->desc,
+	dma_free_coherent(ixgbevf_dma_dev_from_ring(rx_ring),
+			  rx_ring->dma_size, rx_ring->desc,
 			  rx_ring->dma);
 	rx_ring->desc = NULL;
-
-	libeth_rx_fq_destroy(&fq);
-	rx_ring->rx_fqes = NULL;
-	rx_ring->pp = NULL;
 }
 
 /**
-- 
2.52.0

