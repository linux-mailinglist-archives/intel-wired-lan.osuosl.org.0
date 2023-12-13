Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6F0810FFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 12:31:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C259833CA;
	Wed, 13 Dec 2023 11:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C259833CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702467110;
	bh=bdIhamsqJZCAFg1gylR0q1MYJH/tPWWsYAX8HurOQGg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Xj6NaHjcQFQHX9rK8fKWK164Zu74PYjMXy9KT+uhZfWo90IcRRGlpgaNCDbkcWXx
	 RvDjkZ+bJuj7Z+Oh1uJtVQzXGiQh+Z8NV593A/axUcKftBfVZDC1e/kQ98jcNxJYDt
	 ywId4U0sT4TM8tJJ/EfhublwFmMLZpLn1BPrC0fNNwbiu4VT7DiaSTtQTRjR7RaJsT
	 b+BVzCShjv40vMlFExJHD5e8Iy3ZBZJoGgdUL6jbzzU1AxGfumdatkUpvENXkJXDK4
	 3PV3MRAY/TkcWJYyY3VL5PP0njpnnXcwa/rL0q7RRGOYJJ8VXZOEOKGRqblNLgeYV2
	 Hjm50EsVBTxAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MwXVdXPmyVpP; Wed, 13 Dec 2023 11:31:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B935281A5C;
	Wed, 13 Dec 2023 11:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B935281A5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D32281BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7A0240608
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7A0240608
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w_jLutY2vQe4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 11:31:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9442C41953
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 11:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9442C41953
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="375104056"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="375104056"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:31:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="844279570"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="844279570"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2023 03:31:12 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 13 Dec 2023 12:28:32 +0100
Message-ID: <20231213112835.2262651-10-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
References: <20231213112835.2262651-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702467076; x=1734003076;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FXDLZynVpDJprI9svhhKmpsFtKz+xWm68yfXi+wp6e8=;
 b=KdhYqFjmDVGA8cA/bWzbLOVvf1GUf1sjH74Sk0HFLr8v2yc0i416PKiP
 3L2odSsJdHBmM1KZpGu6a07besHiIoCUjbMibZBOUpMlB0DyAT4U4XmMZ
 N0mvqulZp+JieLuVOuQgqX8dm/PxCE08jgN3VCIcLK0W4GGCvUijwXTrO
 1vgdXUpd3r3PbRW3yWNm7TG0O/w72DZx/tM1ihCRbA89Mm8kHo6MKTNCI
 ixhvUxNcDKmJwwOqTWwQA76vfbGA3pxStkALJJN9jPRubmY595PI6yexF
 0M2lDyZTWy9G18tUDeSWdgivntun8hKVpsRo4tEm274K3EdY5qQNswV8X
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KdhYqFjm
Subject: [Intel-wired-lan] [PATCH net-next v7 09/12] iavf: pack iavf_ring
 more efficiently
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Before replacing the Rx buffer management with libie, clean up
&iavf_ring a bit.
There are several fields not used anywhere in the code -- simply remove
them. Move ::tail up to remove a hole. Replace ::arm_wb boolean with
1-bit flag in ::flags to free 1 more byte. Finally, move ::prev_pkt_ctr
out of &iavf_tx_queue_stats -- it doesn't belong there (used for Tx
stall detection). Place it next to the stats on the ring itself to fill
the 4-byte slot.
The result: no holes and all the hot fields fit into the first 64-byte
cacheline.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 12 +++++------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 22 +++------------------
 2 files changed, 9 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 665ee1feb877..62f976d322ab 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -184,7 +184,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * pending work.
 			 */
 			packets = tx_ring->stats.packets & INT_MAX;
-			if (tx_ring->tx_stats.prev_pkt_ctr == packets) {
+			if (tx_ring->prev_pkt_ctr == packets) {
 				iavf_force_wb(vsi, tx_ring->q_vector);
 				continue;
 			}
@@ -193,7 +193,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * to iavf_get_tx_pending()
 			 */
 			smp_rmb();
-			tx_ring->tx_stats.prev_pkt_ctr =
+			tx_ring->prev_pkt_ctr =
 			  iavf_get_tx_pending(tx_ring, true) ? packets : -1;
 		}
 	}
@@ -319,7 +319,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		    ((j / WB_STRIDE) == 0) && (j > 0) &&
 		    !test_bit(__IAVF_VSI_DOWN, vsi->state) &&
 		    (IAVF_DESC_UNUSED(tx_ring) != tx_ring->count))
-			tx_ring->arm_wb = true;
+			tx_ring->flags |= IAVF_TXR_FLAGS_ARM_WB;
 	}
 
 	/* notify netdev of completed buffers */
@@ -674,7 +674,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->tx_stats.prev_pkt_ctr = -1;
+	tx_ring->prev_pkt_ctr = -1;
 	return 0;
 
 err:
@@ -1494,8 +1494,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 			clean_complete = false;
 			continue;
 		}
-		arm_wb |= ring->arm_wb;
-		ring->arm_wb = false;
+		arm_wb |= !!(ring->flags & IAVF_TXR_FLAGS_ARM_WB);
+		ring->flags &= ~IAVF_TXR_FLAGS_ARM_WB;
 	}
 
 	/* Handle case where we are called by netpoll with a budget of 0 */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index e01777531635..ed559fa6f214 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -227,7 +227,6 @@ struct iavf_tx_queue_stats {
 	u64 tx_done_old;
 	u64 tx_linearize;
 	u64 tx_force_wb;
-	int prev_pkt_ctr;
 	u64 tx_lost_interrupt;
 };
 
@@ -237,12 +236,6 @@ struct iavf_rx_queue_stats {
 	u64 alloc_buff_failed;
 };
 
-enum iavf_ring_state_t {
-	__IAVF_TX_FDIR_INIT_DONE,
-	__IAVF_TX_XPS_INIT_DONE,
-	__IAVF_RING_STATE_NBITS /* must be last */
-};
-
 /* some useful defines for virtchannel interface, which
  * is the only remaining user of header split
  */
@@ -264,10 +257,8 @@ struct iavf_ring {
 		struct iavf_tx_buffer *tx_bi;
 		struct iavf_rx_buffer *rx_bi;
 	};
-	DECLARE_BITMAP(state, __IAVF_RING_STATE_NBITS);
-	u16 queue_index;		/* Queue number of ring */
-	u8 dcb_tc;			/* Traffic class of ring */
 	u8 __iomem *tail;
+	u16 queue_index;		/* Queue number of ring */
 
 	/* high bit set means dynamic, use accessors routines to read/write.
 	 * hardware only supports 2us resolution for the ITR registers.
@@ -277,22 +268,14 @@ struct iavf_ring {
 	u16 itr_setting;
 
 	u16 count;			/* Number of descriptors */
-	u16 reg_idx;			/* HW register index of the ring */
 
 	/* used in interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
 
-	u8 atr_sample_rate;
-	u8 atr_count;
-
-	bool ring_active;		/* is ring online or not */
-	bool arm_wb;		/* do something to arm write back */
-	u8 packet_stride;
-
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
-/* BIT(1) is free, was IAVF_RXR_FLAGS_BUILD_SKB_ENABLED */
+#define IAVF_TXR_FLAGS_ARM_WB			BIT(1)
 /* BIT(2) is free */
 #define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
 #define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
@@ -306,6 +289,7 @@ struct iavf_ring {
 		struct iavf_rx_queue_stats rx_stats;
 	};
 
+	int prev_pkt_ctr;		/* For Tx stall detection */
 	unsigned int size;		/* length of descriptor ring in bytes */
 	dma_addr_t dma;			/* physical address of ring */
 
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
