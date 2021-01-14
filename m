Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5232F64DB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 16:39:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C028855B4;
	Thu, 14 Jan 2021 15:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V09d6CcbHa9H; Thu, 14 Jan 2021 15:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E069854C0;
	Thu, 14 Jan 2021 15:39:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 305DB1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2CB2486A73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDV8EflYKcO8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 14:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6EB5086A72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 14:33:23 +0000 (UTC)
IronPort-SDR: gzmQ12WFjiege4o5SYgfJtsYb7SVgBf1avElamkZdb1QsNJj1bVmJNhYaV/n4bVeT5RdrqxIE/
 CBfk4nnN6p2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="263165434"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="263165434"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 06:33:23 -0800
IronPort-SDR: 4LvNipDvQ2XmrKuql9MeGLe3ieVn1DVYMlCeMk+HOEW5gYb2aAzvL1gs2gAMxUZwYSJoA4z7j4
 Hv1CEhyAXnzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="353919537"
Received: from silpixa00400572.ir.intel.com ([10.237.213.34])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jan 2021 06:33:21 -0800
From: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 14:33:15 +0000
Message-Id: <20210114143318.2171-2-cristian.dumitrescu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 Jan 2021 15:39:23 +0000
Subject: [Intel-wired-lan] [PATCH net-next 1/4] i40e: remove unnecessary
 memory writes of the next to clean pointer
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
Cc: netdev@vger.kernel.org, edwin.verplanke@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, cristian.dumitrescu@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For performance reasons, avoid writing the ring next-to-clean pointer
value back to memory on every update, as it is not really necessary.
Instead, simply read it at initialization into a local copy, update
the local copy as necessary and write the local copy back to memory
after the last update.

Signed-off-by: Cristian Dumitrescu <cristian.dumitrescu@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 30 ++++++++--------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 47eb9c584a12..dc11ecd1a55c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -261,18 +261,6 @@ static struct sk_buff *i40e_construct_skb_zc(struct i40e_ring *rx_ring,
 	return skb;
 }
 
-/**
- * i40e_inc_ntc: Advance the next_to_clean index
- * @rx_ring: Rx ring
- **/
-static void i40e_inc_ntc(struct i40e_ring *rx_ring)
-{
-	u32 ntc = rx_ring->next_to_clean + 1;
-
-	ntc = (ntc < rx_ring->count) ? ntc : 0;
-	rx_ring->next_to_clean = ntc;
-}
-
 /**
  * i40e_clean_rx_irq_zc - Consumes Rx packets from the hardware ring
  * @rx_ring: Rx ring
@@ -284,6 +272,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 {
 	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 	u16 cleaned_count = I40E_DESC_UNUSED(rx_ring);
+	u16 next_to_clean = rx_ring->next_to_clean;
+	u16 count_mask = rx_ring->count - 1;
 	unsigned int xdp_res, xdp_xmit = 0;
 	bool failure = false;
 	struct sk_buff *skb;
@@ -294,7 +284,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		unsigned int size;
 		u64 qword;
 
-		rx_desc = I40E_RX_DESC(rx_ring, rx_ring->next_to_clean);
+		rx_desc = I40E_RX_DESC(rx_ring, next_to_clean);
 		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
 
 		/* This memory barrier is needed to keep us from reading
@@ -307,11 +297,11 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			i40e_clean_programming_status(rx_ring,
 						      rx_desc->raw.qword[0],
 						      qword);
-			bi = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
+			bi = i40e_rx_bi(rx_ring, next_to_clean);
 			xsk_buff_free(*bi);
 			*bi = NULL;
 			cleaned_count++;
-			i40e_inc_ntc(rx_ring);
+			next_to_clean = (next_to_clean + 1) & count_mask;
 			continue;
 		}
 
@@ -320,7 +310,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		if (!size)
 			break;
 
-		bi = i40e_rx_bi(rx_ring, rx_ring->next_to_clean);
+		bi = i40e_rx_bi(rx_ring, next_to_clean);
 		(*bi)->data_end = (*bi)->data + size;
 		xsk_buff_dma_sync_for_cpu(*bi, rx_ring->xsk_pool);
 
@@ -336,7 +326,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 			total_rx_packets++;
 
 			cleaned_count++;
-			i40e_inc_ntc(rx_ring);
+			next_to_clean = (next_to_clean + 1) & count_mask;
 			continue;
 		}
 
@@ -355,7 +345,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		}
 
 		cleaned_count++;
-		i40e_inc_ntc(rx_ring);
+		next_to_clean = (next_to_clean + 1) & count_mask;
 
 		if (eth_skb_pad(skb))
 			continue;
@@ -367,6 +357,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		napi_gro_receive(&rx_ring->q_vector->napi, skb);
 	}
 
+	rx_ring->next_to_clean = next_to_clean;
+
 	if (cleaned_count >= I40E_RX_BUFFER_WRITE)
 		failure = !i40e_alloc_rx_buffers_zc(rx_ring, cleaned_count);
 
@@ -374,7 +366,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
 
 	if (xsk_uses_need_wakeup(rx_ring->xsk_pool)) {
-		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
+		if (failure || next_to_clean == rx_ring->next_to_use)
 			xsk_set_rx_need_wakeup(rx_ring->xsk_pool);
 		else
 			xsk_clear_rx_need_wakeup(rx_ring->xsk_pool);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
