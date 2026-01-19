Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A20DBD3B005
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 17:09:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47F7641585;
	Mon, 19 Jan 2026 16:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OUdjyKXwQAgm; Mon, 19 Jan 2026 16:09:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ABF041581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768838941;
	bh=2wTi4E2boEgDkPx8NHZmDl9CDpVOqQlfpbe+Rlvtl1Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SFh5kosRlW3C+nUF1yDxRiPjt1n4yv+Qa0Fq7cCPabIqKvgdyCBjkQlHrQpDaWoIL
	 gABYRuFqt2UFypMUmEoWeXcBadJUOT1x1lVFJYgRgcNdcnPrWO8KhNDgpDVqi8gmkt
	 lyd+JptM5VoShykS1X13ZNVkegZWArG1SGlgvbsaMkEFFD0IG4Dcgb6lvkpD4nAGiB
	 aphm8K6TH8UMQXWYuGK0yw+NJMqzEaUqGULFDU2dPRQTEmlezHEP63qMQvimzEt5dq
	 yqR+ZG/Bwc9fRVdVV2yb27PDEp3UgPkln2tSR9IXdxuoTQDPxKIi/s2pdWQEl/Mpqz
	 HZkz+2lNz4j/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ABF041581;
	Mon, 19 Jan 2026 16:09:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E65F160
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 84086612D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:08:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZnFKvTRkFZ0D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 16:08:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B5646612D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5646612D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5646612D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:08:58 +0000 (UTC)
X-CSE-ConnectionGUID: kfYKG1FhQOi02HVeYaGtEQ==
X-CSE-MsgGUID: k7rlNpcoQvSVcAu7eEEOAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70024623"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="70024623"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 08:08:58 -0800
X-CSE-ConnectionGUID: m03z9xo5TwuyW1visJY+Rg==
X-CSE-MsgGUID: TuCpV0m8TISHPxIMvjc67Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="205804943"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa006.fm.intel.com with ESMTP; 19 Jan 2026 08:08:54 -0800
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
Date: Mon, 19 Jan 2026 17:08:43 +0100
Message-ID: <20260119160843.3854173-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768838939; x=1800374939;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jKLAKNw8LAPiSTNiGlwq3IsykxvTXEyH7GUXFvNYuWQ=;
 b=HY4anZBlKuwCR0zWuEkb+ufzlCF6RVAK6ag60iQ8YVuhDn7M5UOYwnhJ
 8WxwI7A5SRCKDQvFXq3YiZ0WQvwdaVcFXQ6VSCowF/3igFa1xCIdNMJhs
 hDZZ8wm7FMI/1ylVD3y0paMEjk9w5a2Sbf+VviA8AmBd2hsQyCguHcb/E
 SFgUFpxFoF5jcG3OYJbwHKHxbG5I18DwVx88kgOF0tEzAgG+/TmoPo+Nf
 tUwe1HTkrtrIkJGrBgDJVVNvE0J1rbWkKldiCBHBNipnq8haBCs7ahMS0
 JpYG8qb3Au+NBZCnutYIL6t7iqxH8QHFg/4LHA+tw2naussOBIz4rNe7X
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HY4anZBl
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: reshuffle and group Rx and
 Tx queue fields by cachelines
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

Place the fields in ice_{rx,tx}_ring used in the same pieces of
hotpath code closer to each other and use
__cacheline_group_{begin,end}_aligned() to isolate the read mostly,
read-write, and cold groups into separate cachelines similarly
to idpf.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
Applies cleanly to today's next-queue.

Testing hints:

No functional changes in this patch, there's no way it could break
anything. If you want, you can test basic XDP actions (PASS, DROP)
and compare the performance before and after the patch.
---
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 122 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 -
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 -
 4 files changed, 70 insertions(+), 57 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index e3c682723107..557b5e656bb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -267,34 +267,49 @@ struct ice_tstamp_ring {
 } ____cacheline_internodealigned_in_smp;
 
 struct ice_rx_ring {
-	/* CL1 - 1st cacheline starts here */
+	__cacheline_group_begin_aligned(read_mostly);
 	void *desc;			/* Descriptor ring memory */
 	struct page_pool *pp;
 	struct net_device *netdev;	/* netdev ring maps to */
-	struct ice_vsi *vsi;		/* Backreference to associated VSI */
 	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
 	u8 __iomem *tail;
-	u16 q_index;			/* Queue number of ring */
-
-	u16 count;			/* Number of descriptors */
-	u16 reg_idx;			/* HW register index of the ring */
-	u16 next_to_alloc;
 
 	union {
 		struct libeth_fqe *rx_fqes;
 		struct xdp_buff **xdp_buf;
 	};
 
-	/* CL2 - 2nd cacheline starts here */
-	struct libeth_fqe *hdr_fqes;
+	u16 count;			/* Number of descriptors */
+	u8 ptp_rx;
+
+	u8 flags;
+#define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
+#define ICE_RX_FLAGS_MULTIDEV		BIT(3)
+#define ICE_RX_FLAGS_RING_GCS		BIT(4)
+
+	u32 truesize;
+
 	struct page_pool *hdr_pp;
+	struct libeth_fqe *hdr_fqes;
+
+	struct bpf_prog *xdp_prog;
+	struct ice_tx_ring *xdp_ring;
+	struct xsk_buff_pool *xsk_pool;
+
+	/* stats structs */
+	struct ice_ring_stats *ring_stats;
+	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
 
+	u32 hdr_truesize;
+
+	struct xdp_rxq_info xdp_rxq;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
 	union {
 		struct libeth_xdp_buff_stash xdp;
 		struct libeth_xdp_buff *xsk;
 	};
-
-	/* CL3 - 3rd cacheline starts here */
 	union {
 		struct ice_pkt_ctx pkt_ctx;
 		struct {
@@ -302,75 +317,78 @@ struct ice_rx_ring {
 			__be16 vlan_proto;
 		};
 	};
-	struct bpf_prog *xdp_prog;
 
 	/* used in interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
+	__cacheline_group_end_aligned(read_write);
 
-	u32 hdr_truesize;
-	u32 truesize;
-
-	/* stats structs */
-	struct ice_ring_stats *ring_stats;
-
+	__cacheline_group_begin_aligned(cold);
 	struct rcu_head rcu;		/* to avoid race on free */
-	/* CL4 - 4th cacheline starts here */
+	struct ice_vsi *vsi;		/* Backreference to associated VSI */
 	struct ice_channel *ch;
-	struct ice_tx_ring *xdp_ring;
-	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
-	struct xsk_buff_pool *xsk_pool;
-	u16 rx_hdr_len;
-	u16 rx_buf_len;
+
 	dma_addr_t dma;			/* physical address of ring */
+	u16 q_index;			/* Queue number of ring */
+	u16 reg_idx;			/* HW register index of the ring */
 	u8 dcb_tc;			/* Traffic class of ring */
-	u8 ptp_rx;
-#define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
-#define ICE_RX_FLAGS_MULTIDEV		BIT(3)
-#define ICE_RX_FLAGS_RING_GCS		BIT(4)
-	u8 flags;
-	/* CL5 - 5th cacheline starts here */
-	struct xdp_rxq_info xdp_rxq;
+
+	u16 rx_hdr_len;
+	u16 rx_buf_len;
+	__cacheline_group_end_aligned(cold);
 } ____cacheline_internodealigned_in_smp;
 
 struct ice_tx_ring {
-	/* CL1 - 1st cacheline starts here */
-	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
+	__cacheline_group_begin_aligned(read_mostly);
 	void *desc;			/* Descriptor ring memory */
 	struct device *dev;		/* Used for DMA mapping */
 	u8 __iomem *tail;
 	struct ice_tx_buf *tx_buf;
+
 	struct ice_q_vector *q_vector;	/* Backreference to associated vector */
 	struct net_device *netdev;	/* netdev ring maps to */
 	struct ice_vsi *vsi;		/* Backreference to associated VSI */
-	/* CL2 - 2nd cacheline starts here */
-	dma_addr_t dma;			/* physical address of ring */
-	struct xsk_buff_pool *xsk_pool;
-	u16 next_to_use;
-	u16 next_to_clean;
-	u16 q_handle;			/* Queue handle per TC */
-	u16 reg_idx;			/* HW register index of the ring */
+
 	u16 count;			/* Number of descriptors */
 	u16 q_index;			/* Queue number of ring */
-	u16 xdp_tx_active;
+
+	u8 flags;
+#define ICE_TX_FLAGS_RING_XDP		BIT(0)
+#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
+#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
+#define ICE_TX_FLAGS_TXTIME		BIT(3)
+
+	struct xsk_buff_pool *xsk_pool;
+
 	/* stats structs */
 	struct ice_ring_stats *ring_stats;
-	/* CL3 - 3rd cacheline starts here */
+	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
+
+	struct ice_tstamp_ring *tstamp_ring;
+	struct ice_ptp_tx *tx_tstamps;
+	__cacheline_group_end_aligned(read_mostly);
+
+	__cacheline_group_begin_aligned(read_write);
+	u16 next_to_use;
+	u16 next_to_clean;
+
+	u16 xdp_tx_active;
+	spinlock_t tx_lock;
+	__cacheline_group_end_aligned(read_write);
+
+	__cacheline_group_begin_aligned(cold);
 	struct rcu_head rcu;		/* to avoid race on free */
 	DECLARE_BITMAP(xps_state, ICE_TX_NBITS);	/* XPS Config State */
 	struct ice_channel *ch;
-	struct ice_ptp_tx *tx_tstamps;
-	spinlock_t tx_lock;
-	u32 txq_teid;			/* Added Tx queue TEID */
-	/* CL4 - 4th cacheline starts here */
-	struct ice_tstamp_ring *tstamp_ring;
-#define ICE_TX_FLAGS_RING_XDP		BIT(0)
-#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
-#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
-#define ICE_TX_FLAGS_TXTIME		BIT(3)
-	u8 flags;
+
+	dma_addr_t dma;			/* physical address of ring */
+	u16 q_handle;			/* Queue handle per TC */
+	u16 reg_idx;			/* HW register index of the ring */
 	u8 dcb_tc;			/* Traffic class of ring */
+
 	u16 quanta_prof_id;
+	u32 txq_teid;			/* Added Tx queue TEID */
+	__cacheline_group_end_aligned(cold);
 } ____cacheline_internodealigned_in_smp;
 
 static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 8d8569d06119..4f79dc73a8ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3388,7 +3388,6 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 				 */
 				rx_rings[i].next_to_use = 0;
 				rx_rings[i].next_to_clean = 0;
-				rx_rings[i].next_to_alloc = 0;
 				*vsi->rx_rings[i] = rx_rings[i];
 			}
 			kfree(rx_rings);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index e8e1acbd5a7d..40d7252caee0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -582,7 +582,6 @@ void ice_zero_rx_ring(struct ice_rx_ring *rx_ring)
 		     PAGE_SIZE);
 	memset(rx_ring->desc, 0, size);
 
-	rx_ring->next_to_alloc = 0;
 	rx_ring->next_to_clean = 0;
 	rx_ring->next_to_use = 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index f7006ce5104a..66d211aa0833 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -20,9 +20,6 @@ void ice_release_rx_desc(struct ice_rx_ring *rx_ring, u16 val)
 
 	rx_ring->next_to_use = val;
 
-	/* update next to alloc since we have filled the ring */
-	rx_ring->next_to_alloc = val;
-
 	/* QRX_TAIL will be updated with any tail value, but hardware ignores
 	 * the lower 3 bits. This makes it so we only bump tail on meaningful
 	 * boundaries. Also, this allows us to bump tail on intervals of 8 up to
-- 
2.52.0

