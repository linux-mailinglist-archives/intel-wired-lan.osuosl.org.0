Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLncNurkcWngMwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 09:50:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A946373C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 09:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5278085047;
	Thu, 22 Jan 2026 08:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kMnZeFH2xWW3; Thu, 22 Jan 2026 08:50:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EED5843C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769071847;
	bh=xn9N5Tx+tS9RGptnxwPcgRqN795tmKSX2YSJxDICyT0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XjO18qC6Evr+Z/0zlQSusMOv8GxflopTOiC+ENCnMID1A9VryCVzsoePzGn5d+m8u
	 vfzoBIXwMU31lYGqxPVcVr38el3XxoeJ6M5T+Rf/iCVvUVYOoVxZg1dULM9msgZZ3f
	 nRx8wPJeiwQBIAe4WZkcXMh3aQ/6UDYIS1J3wPdFBYABZAJyxgVQ34O+KfHoXxmwCW
	 X3cQJi8XCg8HmVeD5iJPekDpSbRtqx9TctEP/tdrLggFJyXFO0lmpXBaE5RFvhHkD1
	 jcI3ALfWoi6zUxWIYcSO5e5AHd4PalLFMb79DlJBVcCw9ln3DMELk5DtmbL3vXANQY
	 o1OlS5AuQP5jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EED5843C0;
	Thu, 22 Jan 2026 08:50:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F849158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 08:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F175342E53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 08:50:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYOfvUPaFxdZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 08:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C9E242E50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C9E242E50
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C9E242E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 08:50:44 +0000 (UTC)
X-CSE-ConnectionGUID: w/3QuquNTbSZ8BcW8o975A==
X-CSE-MsgGUID: nhQxuEXxTqWH8sFOjDknTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="72900698"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="72900698"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 00:50:42 -0800
X-CSE-ConnectionGUID: 7ZZlwGf+RDC0oXhZ2QWdDQ==
X-CSE-MsgGUID: NVIyCBkmSZCNHPB93vYxaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="206288995"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 22 Jan 2026 00:50:40 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Thu, 22 Jan 2026 09:50:39 +0100
Message-ID: <20260122085039.1117442-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769071844; x=1800607844;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9l8iEd8bG/xM1ir56TTdn/JzoLQ68vI5QDl6oebT1fg=;
 b=EUPqwl/OZfMgCcJS0tZYtwK2D3Vu66C1GYdjQ5SeyLXwJ6ouOjyMgy3H
 urdhdDaUwmJgLEUpyP4JP5L4FoHMVXwV0Ml1coMU48dBWygisEp/ak4wR
 E9+14nxCCgDK2oVKKIrGNFuj6fFL3V1EgQIYuT3UePp2nw7/D1uTRrPl9
 kG4/0Vpxv4OGkXBvkZtBAcw+3npsQbeTGyhJ5a0OROQR4IlitrwoupGHC
 EV8dciAUqZSxh1ahrfaFYymBLSgSKs0UzlKtaqpGHS4fK5aZQ7t4VA6U8
 7t4HClY/5ER/DKll4lFCcj3yRc+oxpD4QGBd6vGY/2jo+2T2pY3y16Ykb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EUPqwl/O
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: refactor: use
 DECLARE_BITMAP for ring state field
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A9A946373C
X-Rspamd-Action: no action

Convert the ring state field from 'unsigned long' to a proper bitmap
using DECLARE_BITMAP macro, aligning with the implementation pattern
already used in the i40e driver.

This change:
- Adds __IXGBE_RING_STATE_NBITS as the bitmap size sentinel to enum
  ixgbe_ring_state_t (consistent with i40e's __I40E_RING_STATE_NBITS)
- Changes 'unsigned long state' to 'DECLARE_BITMAP(state,
  __IXGBE_RING_STATE_NBITS)' in struct ixgbe_ring
- Removes the address-of operator (&) when passing ring->state to bit
  manipulation functions, as bitmap arrays naturally decay to pointers

The change maintains functional equivalence while using the
more appropriate kernel bitmap API, consistent with other Intel Ethernet
drivers.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 27 ++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |  4 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 56 +++++++++----------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  2 +-
 4 files changed, 45 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index dce4936..59a1cee4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -322,49 +322,50 @@ enum ixgbe_ring_state_t {
 	__IXGBE_HANG_CHECK_ARMED,
 	__IXGBE_TX_XDP_RING,
 	__IXGBE_TX_DISABLED,
+	__IXGBE_RING_STATE_NBITS, /* must be last */
 };
 
 #define ring_uses_build_skb(ring) \
-	test_bit(__IXGBE_RX_BUILD_SKB_ENABLED, &(ring)->state)
+	test_bit(__IXGBE_RX_BUILD_SKB_ENABLED, (ring)->state)
 
 struct ixgbe_fwd_adapter {
 	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
 	struct net_device *netdev;
 	unsigned int tx_base_queue;
 	unsigned int rx_base_queue;
 	int pool;
 };
 
 #define check_for_tx_hang(ring) \
-	test_bit(__IXGBE_TX_DETECT_HANG, &(ring)->state)
+	test_bit(__IXGBE_TX_DETECT_HANG, (ring)->state)
 #define set_check_for_tx_hang(ring) \
-	set_bit(__IXGBE_TX_DETECT_HANG, &(ring)->state)
+	set_bit(__IXGBE_TX_DETECT_HANG, (ring)->state)
 #define clear_check_for_tx_hang(ring) \
-	clear_bit(__IXGBE_TX_DETECT_HANG, &(ring)->state)
+	clear_bit(__IXGBE_TX_DETECT_HANG, (ring)->state)
 #define ring_is_rsc_enabled(ring) \
-	test_bit(__IXGBE_RX_RSC_ENABLED, &(ring)->state)
+	test_bit(__IXGBE_RX_RSC_ENABLED, (ring)->state)
 #define set_ring_rsc_enabled(ring) \
-	set_bit(__IXGBE_RX_RSC_ENABLED, &(ring)->state)
+	set_bit(__IXGBE_RX_RSC_ENABLED, (ring)->state)
 #define clear_ring_rsc_enabled(ring) \
-	clear_bit(__IXGBE_RX_RSC_ENABLED, &(ring)->state)
+	clear_bit(__IXGBE_RX_RSC_ENABLED, (ring)->state)
 #define ring_is_xdp(ring) \
-	test_bit(__IXGBE_TX_XDP_RING, &(ring)->state)
+	test_bit(__IXGBE_TX_XDP_RING, (ring)->state)
 #define set_ring_xdp(ring) \
-	set_bit(__IXGBE_TX_XDP_RING, &(ring)->state)
+	set_bit(__IXGBE_TX_XDP_RING, (ring)->state)
 #define clear_ring_xdp(ring) \
-	clear_bit(__IXGBE_TX_XDP_RING, &(ring)->state)
+	clear_bit(__IXGBE_TX_XDP_RING, (ring)->state)
 struct ixgbe_ring {
 	struct ixgbe_ring *next;	/* pointer to next ring in q_vector */
 	struct ixgbe_q_vector *q_vector; /* backpointer to host q_vector */
 	struct net_device *netdev;	/* netdev ring belongs to */
 	struct bpf_prog *xdp_prog;
 	struct device *dev;		/* device for DMA mapping */
 	void *desc;			/* descriptor ring memory */
 	union {
 		struct ixgbe_tx_buffer *tx_buffer_info;
 		struct ixgbe_rx_buffer *rx_buffer_info;
 	};
-	unsigned long state;
+	DECLARE_BITMAP(state, __IXGBE_RING_STATE_NBITS);
 	u8 __iomem *tail;
 	dma_addr_t dma;			/* phys. address of descriptor ring */
 	unsigned int size;		/* length in bytes */
@@ -453,19 +454,19 @@ struct ixgbe_ring_feature {
  */
 static inline unsigned int ixgbe_rx_bufsz(struct ixgbe_ring *ring)
 {
-	if (test_bit(__IXGBE_RX_3K_BUFFER, &ring->state))
+	if (test_bit(__IXGBE_RX_3K_BUFFER, ring->state))
 		return IXGBE_RXBUFFER_3K;
 #if (PAGE_SIZE < 8192)
 	if (ring_uses_build_skb(ring))
 		return IXGBE_MAX_2K_FRAME_BUILD_SKB;
 #endif
 	return IXGBE_RXBUFFER_2K;
 }
 
 static inline unsigned int ixgbe_rx_pg_order(struct ixgbe_ring *ring)
 {
 #if (PAGE_SIZE < 8192)
-	if (test_bit(__IXGBE_RX_3K_BUFFER, &ring->state))
+	if (test_bit(__IXGBE_RX_3K_BUFFER, ring->state))
 		return 1;
 #endif
 	return 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index a1d0491..b5c85c5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -979,15 +979,15 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
 		 * can be marked as checksum errors.
 		 */
 		if (adapter->hw.mac.type == ixgbe_mac_82599EB)
-			set_bit(__IXGBE_RX_CSUM_UDP_ZERO_ERR, &ring->state);
+			set_bit(__IXGBE_RX_CSUM_UDP_ZERO_ERR, ring->state);
 
 #ifdef IXGBE_FCOE
 		if (adapter->netdev->fcoe_mtu) {
 			struct ixgbe_ring_feature *f;
 			f = &adapter->ring_feature[RING_F_FCOE];
 			if ((rxr_idx >= f->offset) &&
 			    (rxr_idx < f->offset + f->indices))
-				set_bit(__IXGBE_RX_FCOE, &ring->state);
+				set_bit(__IXGBE_RX_FCOE, ring->state);
 		}
 
 #endif /* IXGBE_FCOE */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 034618e..95cd8d5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -968,7 +968,7 @@ static void ixgbe_update_xoff_rx_lfc(struct ixgbe_adapter *adapter)
 
 	for (i = 0; i < adapter->num_tx_queues; i++)
 		clear_bit(__IXGBE_HANG_CHECK_ARMED,
-			  &adapter->tx_ring[i]->state);
+			  adapter->tx_ring[i]->state);
 }
 
 static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
@@ -1011,15 +1011,15 @@ static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
 
 		tc = tx_ring->dcb_tc;
 		if (xoff[tc])
-			clear_bit(__IXGBE_HANG_CHECK_ARMED, &tx_ring->state);
+			clear_bit(__IXGBE_HANG_CHECK_ARMED, tx_ring->state);
 	}
 
 	for (i = 0; i < adapter->num_xdp_queues; i++) {
 		struct ixgbe_ring *xdp_ring = adapter->xdp_ring[i];
 
 		tc = xdp_ring->dcb_tc;
 		if (xoff[tc])
-			clear_bit(__IXGBE_HANG_CHECK_ARMED, &xdp_ring->state);
+			clear_bit(__IXGBE_HANG_CHECK_ARMED, xdp_ring->state);
 	}
 }
 
@@ -1103,11 +1103,11 @@ static bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
 	if (tx_done_old == tx_done && tx_pending)
 		/* make sure it is true for two checks in a row */
 		return test_and_set_bit(__IXGBE_HANG_CHECK_ARMED,
-					&tx_ring->state);
+					tx_ring->state);
 	/* update completed stats and continue */
 	tx_ring->tx_stats.tx_done_old = tx_done;
 	/* reset the countdown */
-	clear_bit(__IXGBE_HANG_CHECK_ARMED, &tx_ring->state);
+	clear_bit(__IXGBE_HANG_CHECK_ARMED, tx_ring->state);
 
 	return false;
 }
@@ -1660,7 +1660,7 @@ static inline bool ixgbe_rx_is_fcoe(struct ixgbe_ring *ring,
 {
 	__le16 pkt_info = rx_desc->wb.lower.lo_dword.hs_rss.pkt_info;
 
-	return test_bit(__IXGBE_RX_FCOE, &ring->state) &&
+	return test_bit(__IXGBE_RX_FCOE, ring->state) &&
 	       ((pkt_info & cpu_to_le16(IXGBE_RXDADV_PKTTYPE_ETQF_MASK)) ==
 		(cpu_to_le16(IXGBE_ETQF_FILTER_FCOE <<
 			     IXGBE_RXDADV_PKTTYPE_ETQF_SHIFT)));
@@ -1708,7 +1708,7 @@ static inline void ixgbe_rx_checksum(struct ixgbe_ring *ring,
 		 * checksum errors.
 		 */
 		if ((pkt_info & cpu_to_le16(IXGBE_RXDADV_PKTTYPE_UDP)) &&
-		    test_bit(__IXGBE_RX_CSUM_UDP_ZERO_ERR, &ring->state))
+		    test_bit(__IXGBE_RX_CSUM_UDP_ZERO_ERR, ring->state))
 			return;
 
 		ring->rx_stats.csum_err++;
@@ -3526,7 +3526,7 @@ static irqreturn_t ixgbe_msix_other(int irq, void *data)
 			for (i = 0; i < adapter->num_tx_queues; i++) {
 				struct ixgbe_ring *ring = adapter->tx_ring[i];
 				if (test_and_clear_bit(__IXGBE_TX_FDIR_INIT_DONE,
-						       &ring->state))
+						       ring->state))
 					reinit_count++;
 			}
 			if (reinit_count) {
@@ -3952,22 +3952,22 @@ void ixgbe_configure_tx_ring(struct ixgbe_adapter *adapter,
 	if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
 		ring->atr_sample_rate = adapter->atr_sample_rate;
 		ring->atr_count = 0;
-		set_bit(__IXGBE_TX_FDIR_INIT_DONE, &ring->state);
+		set_bit(__IXGBE_TX_FDIR_INIT_DONE, ring->state);
 	} else {
 		ring->atr_sample_rate = 0;
 	}
 
 	/* initialize XPS */
-	if (!test_and_set_bit(__IXGBE_TX_XPS_INIT_DONE, &ring->state)) {
+	if (!test_and_set_bit(__IXGBE_TX_XPS_INIT_DONE, ring->state)) {
 		struct ixgbe_q_vector *q_vector = ring->q_vector;
 
 		if (q_vector)
 			netif_set_xps_queue(ring->netdev,
 					    &q_vector->affinity_mask,
 					    ring->queue_index);
 	}
 
-	clear_bit(__IXGBE_HANG_CHECK_ARMED, &ring->state);
+	clear_bit(__IXGBE_HANG_CHECK_ARMED, ring->state);
 
 	/* reinitialize tx_buffer_info */
 	memset(ring->tx_buffer_info, 0,
@@ -4173,7 +4173,7 @@ static void ixgbe_configure_srrctl(struct ixgbe_adapter *adapter,
 			srrctl |= PAGE_SIZE >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
 		else
 			srrctl |= xsk_buf_len >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
-	} else if (test_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state)) {
+	} else if (test_bit(__IXGBE_RX_3K_BUFFER, rx_ring->state)) {
 		srrctl |= IXGBE_RXBUFFER_3K >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
 	} else {
 		srrctl |= IXGBE_RXBUFFER_2K >> IXGBE_SRRCTL_BSIZEPKT_SHIFT;
@@ -4558,7 +4558,7 @@ void ixgbe_configure_rx_ring(struct ixgbe_adapter *adapter,
 		 * higher than the MTU of the PF.
 		 */
 		if (ring_uses_build_skb(ring) &&
-		    !test_bit(__IXGBE_RX_3K_BUFFER, &ring->state))
+		    !test_bit(__IXGBE_RX_3K_BUFFER, ring->state))
 			rxdctl |= IXGBE_MAX_2K_FRAME_BUILD_SKB |
 				  IXGBE_RXDCTL_RLPML_EN;
 #endif
@@ -4733,27 +4733,27 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
 		rx_ring = adapter->rx_ring[i];
 
 		clear_ring_rsc_enabled(rx_ring);
-		clear_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
-		clear_bit(__IXGBE_RX_BUILD_SKB_ENABLED, &rx_ring->state);
+		clear_bit(__IXGBE_RX_3K_BUFFER, rx_ring->state);
+		clear_bit(__IXGBE_RX_BUILD_SKB_ENABLED, rx_ring->state);
 
 		if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
 			set_ring_rsc_enabled(rx_ring);
 
-		if (test_bit(__IXGBE_RX_FCOE, &rx_ring->state))
-			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
+		if (test_bit(__IXGBE_RX_FCOE, rx_ring->state))
+			set_bit(__IXGBE_RX_3K_BUFFER, rx_ring->state);
 
 		if (adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
 			continue;
 
-		set_bit(__IXGBE_RX_BUILD_SKB_ENABLED, &rx_ring->state);
+		set_bit(__IXGBE_RX_BUILD_SKB_ENABLED, rx_ring->state);
 
 #if (PAGE_SIZE < 8192)
 		if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED)
-			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
+			set_bit(__IXGBE_RX_3K_BUFFER, rx_ring->state);
 
 		if (IXGBE_2K_TOO_SMALL_WITH_PADDING ||
 		    (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
-			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
+			set_bit(__IXGBE_RX_3K_BUFFER, rx_ring->state);
 #endif
 	}
 }
@@ -7946,10 +7946,10 @@ static void ixgbe_fdir_reinit_subtask(struct ixgbe_adapter *adapter)
 	if (ixgbe_reinit_fdir_tables_82599(hw) == 0) {
 		for (i = 0; i < adapter->num_tx_queues; i++)
 			set_bit(__IXGBE_TX_FDIR_INIT_DONE,
-				&(adapter->tx_ring[i]->state));
+				adapter->tx_ring[i]->state);
 		for (i = 0; i < adapter->num_xdp_queues; i++)
 			set_bit(__IXGBE_TX_FDIR_INIT_DONE,
-				&adapter->xdp_ring[i]->state);
+				adapter->xdp_ring[i]->state);
 		/* re-enable flow director interrupts */
 		IXGBE_WRITE_REG(hw, IXGBE_EIMS, IXGBE_EIMS_FLOW_DIR);
 	} else {
@@ -9490,7 +9490,7 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
 		ixgbe_tx_csum(tx_ring, first, &ipsec_tx);
 
 	/* add the ATR filter if ATR is on */
-	if (test_bit(__IXGBE_TX_FDIR_INIT_DONE, &tx_ring->state))
+	if (test_bit(__IXGBE_TX_FDIR_INIT_DONE, tx_ring->state))
 		ixgbe_atr(tx_ring, first);
 
 #ifdef IXGBE_FCOE
@@ -9530,7 +9530,7 @@ static netdev_tx_t __ixgbe_xmit_frame(struct sk_buff *skb,
 		return NETDEV_TX_OK;
 
 	tx_ring = ring ? ring : adapter->tx_ring[skb_get_queue_mapping(skb)];
-	if (unlikely(test_bit(__IXGBE_TX_DISABLED, &tx_ring->state)))
+	if (unlikely(test_bit(__IXGBE_TX_DISABLED, tx_ring->state)))
 		return NETDEV_TX_BUSY;
 
 	return ixgbe_xmit_frame_ring(skb, adapter, tx_ring);
@@ -11015,7 +11015,7 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
 	if (unlikely(!ring))
 		return -ENXIO;
 
-	if (unlikely(test_bit(__IXGBE_TX_DISABLED, &ring->state)))
+	if (unlikely(test_bit(__IXGBE_TX_DISABLED, ring->state)))
 		return -ENXIO;
 
 	if (static_branch_unlikely(&ixgbe_xdp_locking_key))
@@ -11121,7 +11121,7 @@ static void ixgbe_disable_txr_hw(struct ixgbe_adapter *adapter,
 static void ixgbe_disable_txr(struct ixgbe_adapter *adapter,
 			      struct ixgbe_ring *tx_ring)
 {
-	set_bit(__IXGBE_TX_DISABLED, &tx_ring->state);
+	set_bit(__IXGBE_TX_DISABLED, tx_ring->state);
 	ixgbe_disable_txr_hw(adapter, tx_ring);
 }
 
@@ -11275,9 +11275,9 @@ void ixgbe_txrx_ring_enable(struct ixgbe_adapter *adapter, int ring)
 		ixgbe_configure_tx_ring(adapter, xdp_ring);
 	ixgbe_configure_rx_ring(adapter, rx_ring);
 
-	clear_bit(__IXGBE_TX_DISABLED, &tx_ring->state);
+	clear_bit(__IXGBE_TX_DISABLED, tx_ring->state);
 	if (xdp_ring)
-		clear_bit(__IXGBE_TX_DISABLED, &xdp_ring->state);
+		clear_bit(__IXGBE_TX_DISABLED, xdp_ring->state);
 
 	/* Rx/Tx/XDP Tx share the same napi context. */
 	napi_enable(&rx_ring->q_vector->napi);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 7b94150..89f96c4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -524,7 +524,7 @@ int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 
 	ring = adapter->xdp_ring[qid];
 
-	if (test_bit(__IXGBE_TX_DISABLED, &ring->state))
+	if (test_bit(__IXGBE_TX_DISABLED, ring->state))
 		return -ENETDOWN;
 
 	if (!ring->xsk_pool)
-- 
2.52.0

