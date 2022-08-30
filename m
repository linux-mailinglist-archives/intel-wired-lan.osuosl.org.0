Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0733C5A63EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:51:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47836812E9;
	Tue, 30 Aug 2022 12:51:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47836812E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661863907;
	bh=gvVS1/0wUMcK2qBCaw76oMmMlNvdW/fyjD8JA9Knt5w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VKCUi8bSaRTzJ/8C4qNUBWBh5Ep7VYfyTRNg9/vfk1qsHUOg8HG+krGTVcfGVFF3i
	 /TYtaRVH1Bn+Q4CuJHFVtFqkr6Rlc8YoBQUrPE49o/swuyiUWW+HHbKCpFUWD8KN6g
	 egBhOJATQ7hjqnCt7jvzf9QI3/N1/nz++c8dGedSw9uw5OciymvSoy8oEASJoUw9Bs
	 feDLfHdaUJ08ql4oowbZw4wNpARB03x0YPE4VnXE5LRzMAGw0/qDLEEF0qvqgIY8+i
	 gdJV2RImLmOKderlJCpWn9jdYbfLpmWxsv6TuklstEW22DVMocrKFw00lMJjEtWBp0
	 Oe4GAu3qmWEbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2QC2mEbLbQb; Tue, 30 Aug 2022 12:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1AF981302;
	Tue, 30 Aug 2022 12:51:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1AF981302
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68ADA1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43DC181302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43DC181302
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QEKN6xQLHqQg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 12:51:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05A7E812E9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 05A7E812E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="282136290"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="282136290"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="680024098"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2022 05:51:34 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Aug 2022 14:51:21 +0200
Message-Id: <20220830125122.9665-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220830125122.9665-1-maciej.fijalkowski@intel.com>
References: <20220830125122.9665-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661863897; x=1693399897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/9H9jAdDzpxlKs3CQLR+c8YyBcqIJ7XdwANGjjuaPVI=;
 b=XPWhRu+AkMxl2fleYZFo6vg9G9H452ATLA1ojG/eLrNFop+h/U0q0p2H
 mIIkpE2YqOTzh58pYvyTadhKe8fS75grh4YEdrqDURaM1psV/sqTT5kWT
 3B/znDYWdBWpTbRSe8LqW7j+54c2hgxXDOfZpeACTTXriop81F2ugYfdA
 H1IpYP+fprrUzmaD79Z+MXrxyZyJwVWOhzyGzkMe5cZm0Uk6Csfw8bgpP
 h2rjj16f0TmX8vtUc3mdVV0juYKpDYDT/gSo8wMp4b9Zf2g/CLV1zVRrq
 Yfq2FNV3q3/KP+Dq6TXBwiJJ9FULhH06CZdMDljGXy32pqNr/M4kxCCqg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XPWhRu+A
Subject: [Intel-wired-lan] [PATCH v2 intel-net 1/2] ice: xsk: change batched
 Tx descriptor cleaning
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
Cc: alasdair.mcwilliam@outlook.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

AF_XDP Tx descriptor cleaning in ice driver currently works in a "lazy"
way - descriptors are not cleaned immediately after send. We rather hold
on with cleaning until we see that free space in ring drops below
particular threshold. This was supposed to reduce the amount of
unnecessary work related to cleaning and instead of keeping the ring
empty, ring was rather saturated.

In AF_XDP realm cleaning Tx descriptors implies producing them to CQ.
This is a way of letting know user space that particular descriptor has
been sent, as John points out in [0].

We tried to implement serial descriptor cleaning which would be used in
conjunction with batched cleaning but it made code base more convoluted
and probably harder to maintain in future. Therefore we step away from
batched cleaning in a current form in favor of an approach where we set
RS bit on every last descriptor from a batch and clean always at the
beginning of ice_xmit_zc().

This means that we give up a bit of Tx performance, but this doesn't
hurt l2fwd scenario due to the fact that Tx side is much faster than Rx
and Rx is the one that has to catch Tx up. txonly can be treaten as
AF_XDP based packet generator.

FWIW Tx descriptors are still produced in a batched way.

[0]: https://lore.kernel.org/bpf/62b0a20232920_3573208ab@john.notmuch/

Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 143 +++++++++-------------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |   7 +-
 3 files changed, 64 insertions(+), 88 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 836dce840712..b97d34d0741f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1464,7 +1464,7 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 		bool wd;
 
 		if (tx_ring->xsk_pool)
-			wd = ice_xmit_zc(tx_ring, ICE_DESC_UNUSED(tx_ring), budget);
+			wd = ice_xmit_zc(tx_ring);
 		else if (ice_ring_is_xdp(tx_ring))
 			wd = true;
 		else
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 49ba8bfdbf04..46efe72d1342 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -719,69 +719,57 @@ ice_clean_xdp_tx_buf(struct ice_tx_ring *xdp_ring, struct ice_tx_buf *tx_buf)
 }
 
 /**
- * ice_clean_xdp_irq_zc - Reclaim resources after transmit completes on XDP ring
- * @xdp_ring: XDP ring to clean
- * @napi_budget: amount of descriptors that NAPI allows us to clean
- *
- * Returns count of cleaned descriptors
+ * ice_clean_xdp_irq_zc - produce AF_XDP descriptors to CQ
+ * @xdp_ring: XDP Tx ring
  */
-static u16 ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring, int napi_budget)
+static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
 {
-	u16 tx_thresh = ICE_RING_QUARTER(xdp_ring);
-	int budget = napi_budget / tx_thresh;
-	u16 next_dd = xdp_ring->next_dd;
-	u16 ntc, cleared_dds = 0;
-
-	do {
-		struct ice_tx_desc *next_dd_desc;
-		u16 desc_cnt = xdp_ring->count;
-		struct ice_tx_buf *tx_buf;
-		u32 xsk_frames;
-		u16 i;
-
-		next_dd_desc = ICE_TX_DESC(xdp_ring, next_dd);
-		if (!(next_dd_desc->cmd_type_offset_bsz &
-		    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)))
-			break;
+	u16 ntc = xdp_ring->next_to_clean;
+	struct ice_tx_desc *tx_desc;
+	u16 cnt = xdp_ring->count;
+	struct ice_tx_buf *tx_buf;
+	u16 xsk_frames = 0;
+	u16 last_rs;
+	int i;
 
-		cleared_dds++;
-		xsk_frames = 0;
-		if (likely(!xdp_ring->xdp_tx_active)) {
-			xsk_frames = tx_thresh;
-			goto skip;
-		}
+	last_rs = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : cnt - 1;
+	tx_desc = ICE_TX_DESC(xdp_ring, last_rs);
+	if ((tx_desc->cmd_type_offset_bsz &
+	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE))) {
+		if (last_rs >= ntc)
+			xsk_frames = last_rs - ntc + 1;
+		else
+			xsk_frames = last_rs + cnt - ntc + 1;
+	}
 
-		ntc = xdp_ring->next_to_clean;
+	if (!xsk_frames)
+		return;
 
-		for (i = 0; i < tx_thresh; i++) {
-			tx_buf = &xdp_ring->tx_buf[ntc];
+	if (likely(!xdp_ring->xdp_tx_active))
+		goto skip;
 
-			if (tx_buf->raw_buf) {
-				ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
-				tx_buf->raw_buf = NULL;
-			} else {
-				xsk_frames++;
-			}
+	ntc = xdp_ring->next_to_clean;
+	for (i = 0; i < xsk_frames; i++) {
+		tx_buf = &xdp_ring->tx_buf[ntc];
 
-			ntc++;
-			if (ntc >= xdp_ring->count)
-				ntc = 0;
+		if (tx_buf->raw_buf) {
+			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
+			tx_buf->raw_buf = NULL;
+		} else {
+			xsk_frames++;
 		}
+
+		ntc++;
+		if (ntc >= xdp_ring->count)
+			ntc = 0;
+	}
 skip:
-		xdp_ring->next_to_clean += tx_thresh;
-		if (xdp_ring->next_to_clean >= desc_cnt)
-			xdp_ring->next_to_clean -= desc_cnt;
-		if (xsk_frames)
-			xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
-		next_dd_desc->cmd_type_offset_bsz = 0;
-		next_dd = next_dd + tx_thresh;
-		if (next_dd >= desc_cnt)
-			next_dd = tx_thresh - 1;
-	} while (--budget);
-
-	xdp_ring->next_dd = next_dd;
-
-	return cleared_dds * tx_thresh;
+	tx_desc->cmd_type_offset_bsz = 0;
+	xdp_ring->next_to_clean += xsk_frames;
+	if (xdp_ring->next_to_clean >= cnt)
+		xdp_ring->next_to_clean -= cnt;
+	if (xsk_frames)
+		xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
 }
 
 /**
@@ -816,7 +804,6 @@ static void ice_xmit_pkt(struct ice_tx_ring *xdp_ring, struct xdp_desc *desc,
 static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
 			       unsigned int *total_bytes)
 {
-	u16 tx_thresh = ICE_RING_QUARTER(xdp_ring);
 	u16 ntu = xdp_ring->next_to_use;
 	struct ice_tx_desc *tx_desc;
 	u32 i;
@@ -836,13 +823,6 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
 	}
 
 	xdp_ring->next_to_use = ntu;
-
-	if (xdp_ring->next_to_use > xdp_ring->next_rs) {
-		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
-		tx_desc->cmd_type_offset_bsz |=
-			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
-		xdp_ring->next_rs += tx_thresh;
-	}
 }
 
 /**
@@ -855,7 +835,6 @@ static void ice_xmit_pkt_batch(struct ice_tx_ring *xdp_ring, struct xdp_desc *de
 static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *descs,
 				u32 nb_pkts, unsigned int *total_bytes)
 {
-	u16 tx_thresh = ICE_RING_QUARTER(xdp_ring);
 	u32 batched, leftover, i;
 
 	batched = ALIGN_DOWN(nb_pkts, PKTS_PER_BATCH);
@@ -864,54 +843,54 @@ static void ice_fill_tx_hw_ring(struct ice_tx_ring *xdp_ring, struct xdp_desc *d
 		ice_xmit_pkt_batch(xdp_ring, &descs[i], total_bytes);
 	for (; i < batched + leftover; i++)
 		ice_xmit_pkt(xdp_ring, &descs[i], total_bytes);
+}
 
-	if (xdp_ring->next_to_use > xdp_ring->next_rs) {
-		struct ice_tx_desc *tx_desc;
+/**
+ * ice_set_rs_bit - set RS bit on last produced descriptor (one behind current NTU)
+ * @xdp_ring: XDP ring to produce the HW Tx descriptors on
+ */
+static void ice_set_rs_bit(struct ice_tx_ring *xdp_ring)
+{
+	u16 ntu = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : xdp_ring->count - 1;
+	struct ice_tx_desc *tx_desc;
 
-		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
-		tx_desc->cmd_type_offset_bsz |=
-			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
-		xdp_ring->next_rs += tx_thresh;
-	}
+	tx_desc = ICE_TX_DESC(xdp_ring, ntu);
+	tx_desc->cmd_type_offset_bsz |=
+		cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
 }
 
 /**
  * ice_xmit_zc - take entries from XSK Tx ring and place them onto HW Tx ring
  * @xdp_ring: XDP ring to produce the HW Tx descriptors on
- * @budget: number of free descriptors on HW Tx ring that can be used
- * @napi_budget: amount of descriptors that NAPI allows us to clean
  *
  * Returns true if there is no more work that needs to be done, false otherwise
  */
-bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, u32 budget, int napi_budget)
+bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
 {
 	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
-	u16 tx_thresh = ICE_RING_QUARTER(xdp_ring);
 	u32 nb_pkts, nb_processed = 0;
 	unsigned int total_bytes = 0;
+	int budget;
+
+	ice_clean_xdp_irq_zc(xdp_ring);
 
-	if (budget < tx_thresh)
-		budget += ice_clean_xdp_irq_zc(xdp_ring, napi_budget);
+	budget = ICE_DESC_UNUSED(xdp_ring);
+	budget = min_t(u16, budget, ICE_RING_QUARTER(xdp_ring));
 
 	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
 	if (!nb_pkts)
 		return true;
 
 	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
-		struct ice_tx_desc *tx_desc;
-
 		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
 		ice_fill_tx_hw_ring(xdp_ring, descs, nb_processed, &total_bytes);
-		tx_desc = ICE_TX_DESC(xdp_ring, xdp_ring->next_rs);
-		tx_desc->cmd_type_offset_bsz |=
-			cpu_to_le64(ICE_TX_DESC_CMD_RS << ICE_TXD_QW1_CMD_S);
-		xdp_ring->next_rs = tx_thresh - 1;
 		xdp_ring->next_to_use = 0;
 	}
 
 	ice_fill_tx_hw_ring(xdp_ring, &descs[nb_processed], nb_pkts - nb_processed,
 			    &total_bytes);
 
+	ice_set_rs_bit(xdp_ring);
 	ice_xdp_ring_update_tail(xdp_ring);
 	ice_update_tx_ring_stats(xdp_ring, nb_pkts, total_bytes);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index 21faec8e97db..35dd3c57c4df 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -26,12 +26,9 @@ bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count);
 bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi);
 void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring);
 void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring);
-bool ice_xmit_zc(struct ice_tx_ring *xdp_ring, u32 budget, int napi_budget);
+bool ice_xmit_zc(struct ice_tx_ring *xdp_ring);
 #else
-static inline bool
-ice_xmit_zc(struct ice_tx_ring __always_unused *xdp_ring,
-	    u32 __always_unused budget,
-	    int __always_unused napi_budget)
+ice_xmit_zc(struct ice_tx_ring __always_unused *xdp_ring)
 {
 	return false;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
