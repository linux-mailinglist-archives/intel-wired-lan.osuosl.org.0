Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48939876630
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 15:19:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5E0F836F0;
	Fri,  8 Mar 2024 14:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9n_PMiEtdgP; Fri,  8 Mar 2024 14:19:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 058FC8367C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709907560;
	bh=TWULREaDYd0GhQ+xj1jSHJEQCjdrCYSQBfrRSSrbhK4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g9egonxNaZij/JkQdsH+m8c5/Rke5CpTqoKiqTj+UQv7JjPYa4x5cZxbX15N4pogt
	 aSxos80cLfJfkMAmSaIvWzb9Sd2DtS32DwNIhwVDDVVi5v+j4ruBEa28FhjZyr0JbR
	 2bl5kZ1abdMwi48FUFvhlnOdnrrBVetcov/HC79G0JnUWweT+VbcwfXwJ7HeOKTPuv
	 YV5PcRG9ICtjMLFsNdMVsCGQS1IJfbrfHDhFcddnEM+uNTxhcZPTnaEvku4idt4ao0
	 QVSX+el+pYGcgptaoygIdyM+J4L7Puf4tzX4AqYTKaGCUdhKFD/WvSIa9YWgRu2yzS
	 bIdX71NSvD7og==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 058FC8367C;
	Fri,  8 Mar 2024 14:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED83D1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E71D960A40
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtOkXExZSW2F for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 14:19:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 211EB60855
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 211EB60855
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 211EB60855
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 14:19:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4504667"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4504667"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:19:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15177295"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa005.jf.intel.com with ESMTP; 08 Mar 2024 06:19:13 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Fri,  8 Mar 2024 15:18:32 +0100
Message-ID: <20240308141833.2966600-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
References: <20240308141833.2966600-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709907557; x=1741443557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zVEgMieKOqlQ10EzIrZ/nTBJY74dbSjTG4wpdzvMuBc=;
 b=m91QmzAW522f5/gFv9Q3mswRjj4eEJieOgO8k5InyL5ALSTVqpaRcXUK
 wAYrbhthgoS+NHw3zW27lxM3sL67BZYhwMoEYlYIoe3VdiFNcjhEHkug+
 9Mw61b/EmjvGWuRdL/GJzWCx/41B4phEXwCJcRKxZGBuYaIcbKunb3xuN
 1Pq124AEOKR6HIc/dKbSUyxyfJvWpbqUgj7GT9kr8B271eK543RHDs6kS
 mOyQu495WobABjHiWFkfR490WhQeJ+zy1AVzbarufmlwgJ3WcjYHodCEL
 8wVYg8iP6UEX/ZTaYjf8D5hdfsyM38KY4F5DpXWSLcbwtPM6A9R6EI9lI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m91QmzAW
Subject: [Intel-wired-lan] [PATCH net-next v8 7/8] iavf: pack iavf_ring more
 efficiently
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
 Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 David Christensen <drc@linux.vnet.ibm.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com
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
 drivers/net/ethernet/intel/iavf/iavf_txrx.h | 22 +++------------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 12 +++++------
 2 files changed, 9 insertions(+), 25 deletions(-)

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
 
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index a14f7f211150..1a27fa613f6d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -185,7 +185,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * pending work.
 			 */
 			packets = tx_ring->stats.packets & INT_MAX;
-			if (tx_ring->tx_stats.prev_pkt_ctr == packets) {
+			if (tx_ring->prev_pkt_ctr == packets) {
 				iavf_force_wb(vsi, tx_ring->q_vector);
 				continue;
 			}
@@ -194,7 +194,7 @@ void iavf_detect_recover_hung(struct iavf_vsi *vsi)
 			 * to iavf_get_tx_pending()
 			 */
 			smp_rmb();
-			tx_ring->tx_stats.prev_pkt_ctr =
+			tx_ring->prev_pkt_ctr =
 			  iavf_get_tx_pending(tx_ring, true) ? packets : -1;
 		}
 	}
@@ -320,7 +320,7 @@ static bool iavf_clean_tx_irq(struct iavf_vsi *vsi,
 		    ((j / WB_STRIDE) == 0) && (j > 0) &&
 		    !test_bit(__IAVF_VSI_DOWN, vsi->state) &&
 		    (IAVF_DESC_UNUSED(tx_ring) != tx_ring->count))
-			tx_ring->arm_wb = true;
+			tx_ring->flags |= IAVF_TXR_FLAGS_ARM_WB;
 	}
 
 	/* notify netdev of completed buffers */
@@ -675,7 +675,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->tx_stats.prev_pkt_ctr = -1;
+	tx_ring->prev_pkt_ctr = -1;
 	return 0;
 
 err:
@@ -1491,8 +1491,8 @@ int iavf_napi_poll(struct napi_struct *napi, int budget)
 			clean_complete = false;
 			continue;
 		}
-		arm_wb |= ring->arm_wb;
-		ring->arm_wb = false;
+		arm_wb |= !!(ring->flags & IAVF_TXR_FLAGS_ARM_WB);
+		ring->flags &= ~IAVF_TXR_FLAGS_ARM_WB;
 	}
 
 	/* Handle case where we are called by netpoll with a budget of 0 */
-- 
2.44.0

