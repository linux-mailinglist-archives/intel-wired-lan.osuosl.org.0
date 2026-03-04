Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOVOMHpfqGmduAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C55204641
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1D2081323;
	Wed,  4 Mar 2026 16:36:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KFk17lolJIir; Wed,  4 Mar 2026 16:36:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA6CE8131F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772642163;
	bh=tsT99tuUZCE2kjCLA9lAikN2cSAWwEiaOEHnlLa9ols=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y0voPJwADIxL0pzkxPKoELK+Uu8fZ3S/IQBodz24ZsyamLsFRRS4vxtYgUA4hE/U+
	 RO4kIpaKhiVMBXjBoCHopcq3Wnv4hB7Aq5fTojUFT7PhXN82bbFhhGj27SzHIUZO+n
	 ndKXNDiPZ5Yha8s4BY8iWLO4sW39bsAUq4vRXhb16Qt/o7o9r4afIRbKa6gWOftf2e
	 F7L7qqxIKoUGhowu1uaq2m4o3UMU2odcchakpN0atcxBmCtaT6NgWjl8CRL5xhyrx6
	 n0qwOFSKwPSId22QD6pmA8Qm75HLGpZAfhSEsr2r6U38mxrTOGJhNhnGN22oxx0QyQ
	 WSzF6JmZ2OHzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA6CE8131F;
	Wed,  4 Mar 2026 16:36:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F89E1EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 321C06086F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bzPiVhV1l-Sx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 16:36:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1F2506086D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F2506086D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F2506086D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:01 +0000 (UTC)
X-CSE-ConnectionGUID: WwV9mKdtTmuadnvHfxyA7g==
X-CSE-MsgGUID: RlDB1i+kTZKgOe2GAXa/Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77580027"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77580027"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:01 -0800
X-CSE-ConnectionGUID: K4kdLLZDSkyAZqM+O+bnSQ==
X-CSE-MsgGUID: SwyWluAdRiW8gVjgg7/7MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="222895567"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 04 Mar 2026 08:35:56 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D50DB312C8;
 Wed,  4 Mar 2026 16:35:53 +0000 (GMT)
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
Date: Wed,  4 Mar 2026 17:03:34 +0100
Message-ID: <20260304160345.1340940-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304160345.1340940-1-larysa.zaremba@intel.com>
References: <20260304160345.1340940-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772642161; x=1804178161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jUOV6Js93vk5q324qEhimUXDbEFSByRLcASTD2PJOEU=;
 b=RmJOn8kq+t99c1FGb8MKHi6vb6s3DnrA440cFicyALwasTXWOHiflw+P
 +uzRM+52aKznLg6vZ1scmR+JGS14FARqx60uoaHplLRal3pYrvSKZjFw6
 DJsZjWdSV2elXaa9fW0YJWG3KhtVxQ2wq62hG+3CSRIcI2/3k9l9Rn4D9
 D52/tGZMNVCIw4ZoO6IvMP9+h6Iwn4b3+YY5KlI4oGf2s6oxhG/4hs7l+
 7GHIILvdAVbLN81nOjofBIpaDIhNhR0ZFuHC92eyy+ST2dCyBkVaN5rvl
 hOps6uCfBE0F6WhjvY1xQHD2nMlocYXrhNcA3txcPHJc0UkxwVQwO+QU1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RmJOn8kq
Subject: [Intel-wired-lan] [PATCH iwl-next v3 02/10] ixgbevf: do not share
 pages between packets
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
X-Rspamd-Queue-Id: 66C55204641
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Again, same as in the related iavf commit 920d86f3c552 ("iavf: drop page
splitting and recycling"), as an intermediate step, drop the page sharing
and recycling logic in a preparation to offload it to page_pool.

Instead of the previous sharing and recycling, just allocate a new page
every time.

Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  44 +---
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 231 ++----------------
 2 files changed, 23 insertions(+), 252 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index ae2763fea2be..2d7ca3f86868 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -45,12 +45,7 @@ struct ixgbevf_tx_buffer {
 struct ixgbevf_rx_buffer {
 	dma_addr_t dma;
 	struct page *page;
-#if (BITS_PER_LONG > 32) || (PAGE_SIZE >= 65536)
 	__u32 page_offset;
-#else
-	__u16 page_offset;
-#endif
-	__u16 pagecnt_bias;
 };
 
 struct ixgbevf_stats {
@@ -72,7 +67,6 @@ struct ixgbevf_rx_queue_stats {
 };
 
 enum ixgbevf_ring_state_t {
-	__IXGBEVF_RX_3K_BUFFER,
 	__IXGBEVF_TX_DETECT_HANG,
 	__IXGBEVF_HANG_CHECK_ARMED,
 	__IXGBEVF_TX_XDP_RING,
@@ -143,8 +137,7 @@ struct ixgbevf_ring {
 #define IXGBEVF_MIN_RXD		64
 
 /* Supported Rx Buffer Sizes */
-#define IXGBEVF_RXBUFFER_256	256    /* Used for packet split */
-#define IXGBEVF_RXBUFFER_2048	2048
+#define IXGBEVF_RXBUFFER_256	256
 #define IXGBEVF_RXBUFFER_3072	3072
 
 #define IXGBEVF_RX_HDR_SIZE	IXGBEVF_RXBUFFER_256
@@ -152,12 +145,6 @@ struct ixgbevf_ring {
 #define MAXIMUM_ETHERNET_VLAN_SIZE (VLAN_ETH_FRAME_LEN + ETH_FCS_LEN)
 
 #define IXGBEVF_SKB_PAD		(NET_SKB_PAD + NET_IP_ALIGN)
-#if (PAGE_SIZE < 8192)
-#define IXGBEVF_MAX_FRAME_BUILD_SKB \
-	(SKB_WITH_OVERHEAD(IXGBEVF_RXBUFFER_2048) - IXGBEVF_SKB_PAD)
-#else
-#define IXGBEVF_MAX_FRAME_BUILD_SKB	IXGBEVF_RXBUFFER_2048
-#endif
 
 #define IXGBE_TX_FLAGS_CSUM		BIT(0)
 #define IXGBE_TX_FLAGS_VLAN		BIT(1)
@@ -168,35 +155,6 @@ struct ixgbevf_ring {
 #define IXGBE_TX_FLAGS_VLAN_PRIO_MASK	0x0000e000
 #define IXGBE_TX_FLAGS_VLAN_SHIFT	16
 
-#define ring_uses_large_buffer(ring) \
-	test_bit(__IXGBEVF_RX_3K_BUFFER, &(ring)->state)
-#define set_ring_uses_large_buffer(ring) \
-	set_bit(__IXGBEVF_RX_3K_BUFFER, &(ring)->state)
-#define clear_ring_uses_large_buffer(ring) \
-	clear_bit(__IXGBEVF_RX_3K_BUFFER, &(ring)->state)
-
-static inline unsigned int ixgbevf_rx_bufsz(struct ixgbevf_ring *ring)
-{
-#if (PAGE_SIZE < 8192)
-	if (ring_uses_large_buffer(ring))
-		return IXGBEVF_RXBUFFER_3072;
-
-	return IXGBEVF_MAX_FRAME_BUILD_SKB;
-#endif
-	return IXGBEVF_RXBUFFER_2048;
-}
-
-static inline unsigned int ixgbevf_rx_pg_order(struct ixgbevf_ring *ring)
-{
-#if (PAGE_SIZE < 8192)
-	if (ring_uses_large_buffer(ring))
-		return 1;
-#endif
-	return 0;
-}
-
-#define ixgbevf_rx_pg_size(_ring) (PAGE_SIZE << ixgbevf_rx_pg_order(_ring))
-
 #define check_for_tx_hang(ring) \
 	test_bit(__IXGBEVF_TX_DETECT_HANG, &(ring)->state)
 #define set_check_for_tx_hang(ring) \
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index fc48c89c7bb8..f5a7dd37084f 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -112,9 +112,6 @@ static void ixgbevf_service_event_complete(struct ixgbevf_adapter *adapter)
 static void ixgbevf_queue_reset_subtask(struct ixgbevf_adapter *adapter);
 static void ixgbevf_set_itr(struct ixgbevf_q_vector *q_vector);
 static void ixgbevf_free_all_rx_resources(struct ixgbevf_adapter *adapter);
-static bool ixgbevf_can_reuse_rx_page(struct ixgbevf_rx_buffer *rx_buffer);
-static void ixgbevf_reuse_rx_page(struct ixgbevf_ring *rx_ring,
-				  struct ixgbevf_rx_buffer *old_buff);
 
 static void ixgbevf_remove_adapter(struct ixgbe_hw *hw)
 {
@@ -544,32 +541,14 @@ struct ixgbevf_rx_buffer *ixgbevf_get_rx_buffer(struct ixgbevf_ring *rx_ring,
 				      size,
 				      DMA_FROM_DEVICE);
 
-	rx_buffer->pagecnt_bias--;
-
 	return rx_buffer;
 }
 
 static void ixgbevf_put_rx_buffer(struct ixgbevf_ring *rx_ring,
-				  struct ixgbevf_rx_buffer *rx_buffer,
-				  struct sk_buff *skb)
+				  struct ixgbevf_rx_buffer *rx_buffer)
 {
-	if (ixgbevf_can_reuse_rx_page(rx_buffer)) {
-		/* hand second half of page back to the ring */
-		ixgbevf_reuse_rx_page(rx_ring, rx_buffer);
-	} else {
-		if (IS_ERR(skb))
-			/* We are not reusing the buffer so unmap it and free
-			 * any references we are holding to it
-			 */
-			dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma,
-					     ixgbevf_rx_pg_size(rx_ring),
-					     DMA_FROM_DEVICE,
-					     IXGBEVF_RX_DMA_ATTR);
-		__page_frag_cache_drain(rx_buffer->page,
-					rx_buffer->pagecnt_bias);
-	}
-
-	/* clear contents of rx_buffer */
+	dma_unmap_page_attrs(rx_ring->dev, rx_buffer->dma, PAGE_SIZE,
+			     DMA_FROM_DEVICE, IXGBEVF_RX_DMA_ATTR);
 	rx_buffer->page = NULL;
 }
 
@@ -600,38 +579,28 @@ static bool ixgbevf_is_non_eop(struct ixgbevf_ring *rx_ring,
 	return true;
 }
 
-static inline unsigned int ixgbevf_rx_offset(struct ixgbevf_ring *rx_ring)
-{
-	return IXGBEVF_SKB_PAD;
-}
-
 static bool ixgbevf_alloc_mapped_page(struct ixgbevf_ring *rx_ring,
 				      struct ixgbevf_rx_buffer *bi)
 {
 	struct page *page = bi->page;
 	dma_addr_t dma;
 
-	/* since we are recycling buffers we should seldom need to alloc */
-	if (likely(page))
-		return true;
-
 	/* alloc new page for storage */
-	page = dev_alloc_pages(ixgbevf_rx_pg_order(rx_ring));
+	page = dev_alloc_page();
 	if (unlikely(!page)) {
 		rx_ring->rx_stats.alloc_rx_page_failed++;
 		return false;
 	}
 
 	/* map page for use */
-	dma = dma_map_page_attrs(rx_ring->dev, page, 0,
-				 ixgbevf_rx_pg_size(rx_ring),
+	dma = dma_map_page_attrs(rx_ring->dev, page, 0, PAGE_SIZE,
 				 DMA_FROM_DEVICE, IXGBEVF_RX_DMA_ATTR);
 
 	/* if mapping failed free memory back to system since
 	 * there isn't much point in holding memory we can't use
 	 */
 	if (dma_mapping_error(rx_ring->dev, dma)) {
-		__free_pages(page, ixgbevf_rx_pg_order(rx_ring));
+		__free_page(page);
 
 		rx_ring->rx_stats.alloc_rx_page_failed++;
 		return false;
@@ -639,8 +608,7 @@ static bool ixgbevf_alloc_mapped_page(struct ixgbevf_ring *rx_ring,
 
 	bi->dma = dma;
 	bi->page = page;
-	bi->page_offset = ixgbevf_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
+	bi->page_offset = IXGBEVF_SKB_PAD;
 	rx_ring->rx_stats.alloc_rx_page++;
 
 	return true;
@@ -673,7 +641,7 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
 		/* sync the buffer for use by the device */
 		dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
 						 bi->page_offset,
-						 ixgbevf_rx_bufsz(rx_ring),
+						 IXGBEVF_RXBUFFER_3072,
 						 DMA_FROM_DEVICE);
 
 		/* Refresh the desc even if pkt_addr didn't change
@@ -755,66 +723,6 @@ static bool ixgbevf_cleanup_headers(struct ixgbevf_ring *rx_ring,
 	return false;
 }
 
-/**
- * ixgbevf_reuse_rx_page - page flip buffer and store it back on the ring
- * @rx_ring: rx descriptor ring to store buffers on
- * @old_buff: donor buffer to have page reused
- *
- * Synchronizes page for reuse by the adapter
- **/
-static void ixgbevf_reuse_rx_page(struct ixgbevf_ring *rx_ring,
-				  struct ixgbevf_rx_buffer *old_buff)
-{
-	struct ixgbevf_rx_buffer *new_buff;
-	u16 nta = rx_ring->next_to_alloc;
-
-	new_buff = &rx_ring->rx_buffer_info[nta];
-
-	/* update, and store next to alloc */
-	nta++;
-	rx_ring->next_to_alloc = (nta < rx_ring->count) ? nta : 0;
-
-	/* transfer page from old buffer to new buffer */
-	new_buff->page = old_buff->page;
-	new_buff->dma = old_buff->dma;
-	new_buff->page_offset = old_buff->page_offset;
-	new_buff->pagecnt_bias = old_buff->pagecnt_bias;
-}
-
-static bool ixgbevf_can_reuse_rx_page(struct ixgbevf_rx_buffer *rx_buffer)
-{
-	unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
-	struct page *page = rx_buffer->page;
-
-	/* avoid re-using remote and pfmemalloc pages */
-	if (!dev_page_is_reusable(page))
-		return false;
-
-#if (PAGE_SIZE < 8192)
-	/* if we are only owner of page we can reuse it */
-	if (unlikely((page_ref_count(page) - pagecnt_bias) > 1))
-		return false;
-#else
-#define IXGBEVF_LAST_OFFSET \
-	(SKB_WITH_OVERHEAD(PAGE_SIZE) - IXGBEVF_RXBUFFER_2048)
-
-	if (rx_buffer->page_offset > IXGBEVF_LAST_OFFSET)
-		return false;
-
-#endif
-
-	/* If we have drained the page fragment pool we need to update
-	 * the pagecnt_bias and page count so that we fully restock the
-	 * number of references the driver holds.
-	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
-		rx_buffer->pagecnt_bias = USHRT_MAX;
-	}
-
-	return true;
-}
-
 /**
  * ixgbevf_add_rx_frag - Add contents of Rx buffer to sk_buff
  * @rx_ring: rx descriptor ring to transact packets on
@@ -829,18 +737,10 @@ static void ixgbevf_add_rx_frag(struct ixgbevf_ring *rx_ring,
 				struct sk_buff *skb,
 				unsigned int size)
 {
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = ixgbevf_rx_pg_size(rx_ring) / 2;
-#else
 	unsigned int truesize = SKB_DATA_ALIGN(IXGBEVF_SKB_PAD + size);
-#endif
+
 	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buffer->page,
 			rx_buffer->page_offset, size, truesize);
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
 }
 
 static inline void ixgbevf_irq_enable_queues(struct ixgbevf_adapter *adapter,
@@ -857,13 +757,9 @@ static struct sk_buff *ixgbevf_build_skb(struct ixgbevf_ring *rx_ring,
 					 union ixgbe_adv_rx_desc *rx_desc)
 {
 	unsigned int metasize = xdp->data - xdp->data_meta;
-#if (PAGE_SIZE < 8192)
-	unsigned int truesize = ixgbevf_rx_pg_size(rx_ring) / 2;
-#else
 	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
 				SKB_DATA_ALIGN(xdp->data_end -
 					       xdp->data_hard_start);
-#endif
 	struct sk_buff *skb;
 
 	/* Prefetch first cache line of first page. If xdp->data_meta
@@ -884,13 +780,6 @@ static struct sk_buff *ixgbevf_build_skb(struct ixgbevf_ring *rx_ring,
 	if (metasize)
 		skb_metadata_set(skb, metasize);
 
-	/* update buffer offset */
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-
 	return skb;
 }
 
@@ -1014,38 +903,11 @@ static int ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
 	return result;
 }
 
-static unsigned int ixgbevf_rx_frame_truesize(struct ixgbevf_ring *rx_ring,
-					      unsigned int size)
-{
-	unsigned int truesize;
-
-#if (PAGE_SIZE < 8192)
-	truesize = ixgbevf_rx_pg_size(rx_ring) / 2; /* Must be power-of-2 */
-#else
-	truesize = SKB_DATA_ALIGN(IXGBEVF_SKB_PAD + size) +
-		   SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
-#endif
-	return truesize;
-}
-
-static void ixgbevf_rx_buffer_flip(struct ixgbevf_ring *rx_ring,
-				   struct ixgbevf_rx_buffer *rx_buffer,
-				   unsigned int size)
-{
-	unsigned int truesize = ixgbevf_rx_frame_truesize(rx_ring, size);
-
-#if (PAGE_SIZE < 8192)
-	rx_buffer->page_offset ^= truesize;
-#else
-	rx_buffer->page_offset += truesize;
-#endif
-}
-
 static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 				struct ixgbevf_ring *rx_ring,
 				int budget)
 {
-	unsigned int total_rx_bytes = 0, total_rx_packets = 0, frame_sz = 0;
+	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	struct ixgbevf_adapter *adapter = q_vector->adapter;
 	u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
 	struct sk_buff *skb = rx_ring->skb;
@@ -1054,10 +916,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 	int xdp_res = 0;
 
 	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
-#if (PAGE_SIZE < 8192)
-	frame_sz = ixgbevf_rx_frame_truesize(rx_ring, 0);
-#endif
-	xdp_init_buff(&xdp, frame_sz, &rx_ring->xdp_rxq);
+	xdp_init_buff(&xdp, IXGBEVF_RXBUFFER_3072, &rx_ring->xdp_rxq);
 
 	while (likely(total_rx_packets < budget)) {
 		struct ixgbevf_rx_buffer *rx_buffer;
@@ -1081,31 +940,24 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		 */
 		rmb();
 
-		rx_buffer = ixgbevf_get_rx_buffer(rx_ring, size);
+		rx_buffer =
+			ixgbevf_get_rx_buffer(rx_ring, IXGBEVF_RXBUFFER_3072);
 
 		/* retrieve a buffer from the ring */
 		if (!skb) {
-			unsigned int offset = ixgbevf_rx_offset(rx_ring);
+			unsigned int offset = rx_buffer->page_offset;
 			unsigned char *hard_start;
 
 			hard_start = page_address(rx_buffer->page) +
 				     rx_buffer->page_offset - offset;
 			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
-#if (PAGE_SIZE > 4096)
-			/* At larger PAGE_SIZE, frame_sz depend on len size */
-			xdp.frame_sz = ixgbevf_rx_frame_truesize(rx_ring, size);
-#endif
 			xdp_res = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
 		}
 
 		if (xdp_res) {
-			if (xdp_res == IXGBEVF_XDP_TX) {
+			if (xdp_res == IXGBEVF_XDP_TX)
 				xdp_xmit = true;
-				ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
-						       size);
-			} else {
-				rx_buffer->pagecnt_bias++;
-			}
+
 			total_rx_packets++;
 			total_rx_bytes += size;
 		} else if (skb) {
@@ -1118,11 +970,10 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		/* exit if we failed to retrieve a buffer */
 		if (!xdp_res && !skb) {
 			rx_ring->rx_stats.alloc_rx_buff_failed++;
-			rx_buffer->pagecnt_bias++;
 			break;
 		}
 
-		ixgbevf_put_rx_buffer(rx_ring, rx_buffer, skb);
+		ixgbevf_put_rx_buffer(rx_ring, rx_buffer);
 		cleaned_count++;
 
 		/* fetch next buffer in frame if non-eop */
@@ -1699,10 +1550,7 @@ static void ixgbevf_configure_srrctl(struct ixgbevf_adapter *adapter,
 	srrctl = IXGBE_SRRCTL_DROP_EN;
 
 	srrctl |= IXGBEVF_RX_HDR_SIZE << IXGBE_SRRCTL_BSIZEHDRSIZE_SHIFT;
-	if (ring_uses_large_buffer(ring))
-		srrctl |= IXGBEVF_RXBUFFER_3072 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
-	else
-		srrctl |= IXGBEVF_RXBUFFER_2048 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
+	srrctl |= IXGBEVF_RXBUFFER_3072 >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
 	srrctl |= IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF;
 
 	IXGBE_WRITE_REG(hw, IXGBE_VFSRRCTL(index), srrctl);
@@ -1880,13 +1728,6 @@ static void ixgbevf_configure_rx_ring(struct ixgbevf_adapter *adapter,
 	if (adapter->hw.mac.type != ixgbe_mac_82599_vf) {
 		rxdctl &= ~(IXGBE_RXDCTL_RLPMLMASK |
 			    IXGBE_RXDCTL_RLPML_EN);
-
-#if (PAGE_SIZE < 8192)
-		/* Limit the maximum frame size so we don't overrun the skb */
-		if (!ring_uses_large_buffer(ring))
-			rxdctl |= IXGBEVF_MAX_FRAME_BUILD_SKB |
-				  IXGBE_RXDCTL_RLPML_EN;
-#endif
 	}
 
 	rxdctl |= IXGBE_RXDCTL_ENABLE | IXGBE_RXDCTL_VME;
@@ -1896,24 +1737,6 @@ static void ixgbevf_configure_rx_ring(struct ixgbevf_adapter *adapter,
 	ixgbevf_alloc_rx_buffers(ring, ixgbevf_desc_unused(ring));
 }
 
-static void ixgbevf_set_rx_buffer_len(struct ixgbevf_adapter *adapter,
-				      struct ixgbevf_ring *rx_ring)
-{
-	struct net_device *netdev = adapter->netdev;
-	unsigned int max_frame = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;
-
-	/* set buffer size flags */
-	clear_ring_uses_large_buffer(rx_ring);
-
-	if (PAGE_SIZE < 8192)
-		/* 82599 can't rely on RXDCTL.RLPML to restrict
-		 * the size of the frame
-		 */
-		if (max_frame > IXGBEVF_MAX_FRAME_BUILD_SKB ||
-		    adapter->hw.mac.type == ixgbe_mac_82599_vf)
-			set_ring_uses_large_buffer(rx_ring);
-}
-
 /**
  * ixgbevf_configure_rx - Configure 82599 VF Receive Unit after Reset
  * @adapter: board private structure
@@ -1944,7 +1767,6 @@ static void ixgbevf_configure_rx(struct ixgbevf_adapter *adapter)
 	for (i = 0; i < adapter->num_rx_queues; i++) {
 		struct ixgbevf_ring *rx_ring = adapter->rx_ring[i];
 
-		ixgbevf_set_rx_buffer_len(adapter, rx_ring);
 		ixgbevf_configure_rx_ring(adapter, rx_ring);
 	}
 }
@@ -2323,19 +2145,12 @@ static void ixgbevf_clean_rx_ring(struct ixgbevf_ring *rx_ring)
 		dma_sync_single_range_for_cpu(rx_ring->dev,
 					      rx_buffer->dma,
 					      rx_buffer->page_offset,
-					      ixgbevf_rx_bufsz(rx_ring),
+					      IXGBEVF_RXBUFFER_3072,
 					      DMA_FROM_DEVICE);
 
 		/* free resources associated with mapping */
-		dma_unmap_page_attrs(rx_ring->dev,
-				     rx_buffer->dma,
-				     ixgbevf_rx_pg_size(rx_ring),
-				     DMA_FROM_DEVICE,
-				     IXGBEVF_RX_DMA_ATTR);
-
-		__page_frag_cache_drain(rx_buffer->page,
-					rx_buffer->pagecnt_bias);
-
+		ixgbevf_put_rx_buffer(rx_ring, rx_buffer);
+		__free_page(rx_buffer->page);
 		i++;
 		if (i == rx_ring->count)
 			i = 0;
@@ -4394,9 +4209,7 @@ static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 
 	/* verify ixgbevf ring attributes are sufficient for XDP */
 	for (i = 0; i < adapter->num_rx_queues; i++) {
-		struct ixgbevf_ring *ring = adapter->rx_ring[i];
-
-		if (frame_size > ixgbevf_rx_bufsz(ring))
+		if (frame_size > IXGBEVF_RXBUFFER_3072)
 			return -EINVAL;
 	}
 
-- 
2.52.0

