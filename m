Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B70B6837C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:46:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA35540535;
	Tue, 31 Jan 2023 20:46:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA35540535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675198002;
	bh=mHxG/3WA4QXcqWgE8ImKd1V6q9BIZ/mcrpE6hyrW0Ws=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jvjDNZJzZC1+ZpB7fHZJlGQaMwIf0Q3QelM4pnH1DCTXVECY45HFD45CWx7OVbr6i
	 V2Xv7CIwXJIthupfMgikymLKEqmJvqqT55RUrT1Hyf/9j70QKtyG7Y4SVaQQOvNcXA
	 huym3MzX72TBnsyZD56HQMiGTXNIAUx0nYgwiaZNh6el09dZyW4z6Ml7EFE7S3Zls4
	 DtahWw6+CedxTUXvi26OBWQRkGs0JqaJr6CWaJ/YehAflZcSelF2YlPKiTv9i5wvHP
	 82YlfP2h18iVPPKZ2OaVJVWNKX/kN0MOcbPmRzEkSvZ5JK6PMivy0x8q0EiGFN9FPO
	 AYfJw0Sra4hmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ReM3IqhqQAvp; Tue, 31 Jan 2023 20:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F00C400C8;
	Tue, 31 Jan 2023 20:46:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F00C400C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D38331BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A84F940502
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A84F940502
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pY1MUHLR_Z2X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:46:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9630F4052E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9630F4052E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167520"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167520"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:46:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595473"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595473"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:44 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:45:06 +0100
Message-Id: <20230131204506.219292-14-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197985; x=1706733985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tPa6rx2M3yGQFJ8G8m8Ac1kCs82eOhhfBZXeImUOp5w=;
 b=TSBFzYI9sflJZz204aS3P6kkoLIbHmoRwqiHnNSvQPuUQ8c3wMoV5fTz
 ut6cOW2GcbK4L0KkVaer2WTDYgYiK0YCEHkq8VqZzL/+TaMi5g184un60
 RBCp9P6C9Qaig8W9gtAE9vnhG+PIlDRzFbq1AgVYIN6fGZfsWV2pU83ME
 H9xtwfHFt8iYgaYDu4vJ7e6JYCoP2heVPJyUl/0v5Gyj3Oal7uab/zNU9
 Ojru2Zam/dEZOF3dgISdOCjgzDs87r3VlFa5HK0neXXXNxn1UMlceKqhn
 ZaLdOLJK5FvSofEz/yivpLamUebUpY7I8krRYDd//ByMb/kf+3MU91hqm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TSBFzYI9
Subject: [Intel-wired-lan] [PATCH bpf-next 13/13] ice: xsk: do not convert
 to buff to frame for XDP_TX
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Let us store pointer to xdp_buff that came from xsk_buff_pool on tx_buf
so that it will be possible to recycle it via xsk_buff_free() on Tx
cleaning side. This way it is not necessary to do expensive copy to
another xdp_buff backed by a newly allocated page.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  12 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  22 +--
 drivers/net/ethernet/intel/ice/ice_xsk.c      | 176 +++++++++++-------
 4 files changed, 117 insertions(+), 94 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8e211b210a24..f11789de2216 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -113,12 +113,16 @@ static void
 ice_unmap_and_free_tx_buf(struct ice_tx_ring *ring, struct ice_tx_buf *tx_buf)
 {
 	if (tx_buf->skb) {
-		if (tx_buf->tx_flags & ICE_TX_FLAGS_DUMMY_PKT)
+		if (tx_buf->tx_flags & ICE_TX_FLAGS_DUMMY_PKT) {
 			devm_kfree(ring->dev, tx_buf->raw_buf);
-		else if (ice_ring_is_xdp(ring))
-			page_frag_free(tx_buf->raw_buf);
-		else
+		} else if (ice_ring_is_xdp(ring)) {
+			if (ring->xsk_pool)
+				xsk_buff_free(tx_buf->xdp);
+			else
+				page_frag_free(tx_buf->raw_buf);
+		} else {
 			dev_kfree_skb_any(tx_buf->skb);
+		}
 		if (dma_unmap_len(tx_buf, len))
 			dma_unmap_single(ring->dev,
 					 dma_unmap_addr(tx_buf, dma),
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 7903bb692c1f..efa3d378f19e 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -157,6 +157,7 @@ struct ice_tx_buf {
 	union {
 		struct sk_buff *skb;
 		void *raw_buf; /* used for XDP */
+		struct xdp_buff *xdp; /* used for XDP_TX ZC */
 	};
 	unsigned int bytecount;
 	union {
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 3dcc40b96b58..9bbed3f14e42 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -275,7 +275,10 @@ static u32 ice_clean_xdp_irq(struct ice_tx_ring *xdp_ring)
 		/* count head + frags */
 		ready_frames -= frags + 1;
 
-		ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
+		if (xdp_ring->xsk_pool)
+			xsk_buff_free(tx_buf->xdp);
+		else
+			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
 		ntc++;
 		if (ntc == cnt)
 			ntc = 0;
@@ -407,23 +410,6 @@ int ice_xmit_xdp_ring(struct xdp_frame *xdpf, struct ice_tx_ring *xdp_ring)
 	return __ice_xmit_xdp_ring(&xdp, xdp_ring);
 }
 
-/**
- * ice_xmit_xdp_buff - convert an XDP buffer to an XDP frame and send it
- * @xdp: XDP buffer
- * @xdp_ring: XDP Tx ring
- *
- * Returns negative on failure, 0 on success.
- */
-int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring)
-{
-	struct xdp_frame *xdpf = xdp_convert_buff_to_frame(xdp);
-
-	if (unlikely(!xdpf))
-		return ICE_XDP_CONSUMED;
-
-	return ice_xmit_xdp_ring(xdpf, xdp_ring);
-}
-
 /**
  * ice_finalize_xdp_rx - Bump XDP Tx tail and/or flush redirect map
  * @xdp_ring: XDP ring
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index b1b419cdadd1..a25a68c69f22 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -597,6 +597,107 @@ ice_construct_skb_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 	return skb;
 }
 
+/**
+ * ice_clean_xdp_irq_zc - AF_XDP ZC specific Tx cleaning routine
+ * @xdp_ring: XDP Tx ring
+ */
+static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
+{
+	u16 ntc = xdp_ring->next_to_clean;
+	struct ice_tx_desc *tx_desc;
+	u16 cnt = xdp_ring->count;
+	struct ice_tx_buf *tx_buf;
+	u16 xsk_frames = 0;
+	u16 last_rs;
+	int i;
+
+	last_rs = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : cnt - 1;
+	tx_desc = ICE_TX_DESC(xdp_ring, last_rs);
+	if (tx_desc->cmd_type_offset_bsz &
+	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE)) {
+		if (last_rs >= ntc)
+			xsk_frames = last_rs - ntc + 1;
+		else
+			xsk_frames = last_rs + cnt - ntc + 1;
+	}
+
+	if (!xsk_frames)
+		return;
+
+	if (likely(!xdp_ring->xdp_tx_active))
+		goto skip;
+
+	ntc = xdp_ring->next_to_clean;
+	for (i = 0; i < xsk_frames; i++) {
+		tx_buf = &xdp_ring->tx_buf[ntc];
+
+		if (tx_buf->xdp) {
+			xsk_buff_free(tx_buf->xdp);
+			xdp_ring->xdp_tx_active--;
+		} else {
+			xsk_frames++;
+		}
+
+		ntc++;
+		if (ntc == cnt)
+			ntc = 0;
+	}
+skip:
+	tx_desc->cmd_type_offset_bsz = 0;
+	xdp_ring->next_to_clean += xsk_frames;
+	if (xdp_ring->next_to_clean >= cnt)
+		xdp_ring->next_to_clean -= cnt;
+	if (xsk_frames)
+		xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
+}
+
+/**
+ * ice_xmit_xdp_tx_zc - AF_XDP ZC handler for XDP_TX
+ * @xdp: XDP buffer to xmit
+ * @xdp_ring: XDP ring to produce descriptor onto
+ *
+ * note that this function works directly on xdp_buff, no need to convert
+ * it to xdp_frame. xdp_buff pointer is stored to ice_tx_buf so that cleaning
+ * side will be able to xsk_buff_free() it.
+ *
+ * Returns ICE_XDP_TX for successfully produced desc, ICE_XDP_CONSUMED if there
+ * was not enough space on XDP ring
+ */
+static int ice_xmit_xdp_tx_zc(struct xdp_buff *xdp,
+			      struct ice_tx_ring *xdp_ring)
+{
+	u32 size = xdp->data_end - xdp->data;
+	u32 ntu = xdp_ring->next_to_use;
+	struct ice_tx_desc *tx_desc;
+	struct ice_tx_buf *tx_buf;
+	dma_addr_t dma;
+
+	if (ICE_DESC_UNUSED(xdp_ring) < ICE_RING_QUARTER(xdp_ring)) {
+		ice_clean_xdp_irq_zc(xdp_ring);
+		if (!ICE_DESC_UNUSED(xdp_ring)) {
+			xdp_ring->ring_stats->tx_stats.tx_busy++;
+			return ICE_XDP_CONSUMED;
+		}
+	}
+
+	dma = xsk_buff_xdp_get_dma(xdp);
+	xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, size);
+
+	tx_buf = &xdp_ring->tx_buf[ntu];
+	tx_buf->xdp = xdp;
+	tx_desc = ICE_TX_DESC(xdp_ring, ntu);
+	tx_desc->buf_addr = cpu_to_le64(dma);
+	tx_desc->cmd_type_offset_bsz = ice_build_ctob(ICE_TX_DESC_CMD_EOP,
+						      0, size, 0);
+	xdp_ring->xdp_tx_active++;
+
+	if (++ntu == xdp_ring->count)
+		ntu = 0;
+	xdp_ring->next_to_use = ntu;
+
+	return ICE_XDP_TX;
+}
+
 /**
  * ice_run_xdp_zc - Executes an XDP program in zero-copy path
  * @rx_ring: Rx ring
@@ -630,7 +731,7 @@ ice_run_xdp_zc(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	case XDP_PASS:
 		break;
 	case XDP_TX:
-		result = ice_xmit_xdp_buff(xdp, xdp_ring);
+		result = ice_xmit_xdp_tx_zc(xdp, xdp_ring);
 		if (result == ICE_XDP_CONSUMED)
 			goto out_failure;
 		break;
@@ -775,75 +876,6 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 	return failure ? budget : (int)total_rx_packets;
 }
 
-/**
- * ice_clean_xdp_tx_buf - Free and unmap XDP Tx buffer
- * @xdp_ring: XDP Tx ring
- * @tx_buf: Tx buffer to clean
- */
-static void
-ice_clean_xdp_tx_buf(struct ice_tx_ring *xdp_ring, struct ice_tx_buf *tx_buf)
-{
-	page_frag_free(tx_buf->raw_buf);
-	xdp_ring->xdp_tx_active--;
-	dma_unmap_single(xdp_ring->dev, dma_unmap_addr(tx_buf, dma),
-			 dma_unmap_len(tx_buf, len), DMA_TO_DEVICE);
-	dma_unmap_len_set(tx_buf, len, 0);
-}
-
-/**
- * ice_clean_xdp_irq_zc - produce AF_XDP descriptors to CQ
- * @xdp_ring: XDP Tx ring
- */
-static void ice_clean_xdp_irq_zc(struct ice_tx_ring *xdp_ring)
-{
-	u16 ntc = xdp_ring->next_to_clean;
-	struct ice_tx_desc *tx_desc;
-	u16 cnt = xdp_ring->count;
-	struct ice_tx_buf *tx_buf;
-	u16 xsk_frames = 0;
-	u16 last_rs;
-	int i;
-
-	last_rs = xdp_ring->next_to_use ? xdp_ring->next_to_use - 1 : cnt - 1;
-	tx_desc = ICE_TX_DESC(xdp_ring, last_rs);
-	if ((tx_desc->cmd_type_offset_bsz &
-	    cpu_to_le64(ICE_TX_DESC_DTYPE_DESC_DONE))) {
-		if (last_rs >= ntc)
-			xsk_frames = last_rs - ntc + 1;
-		else
-			xsk_frames = last_rs + cnt - ntc + 1;
-	}
-
-	if (!xsk_frames)
-		return;
-
-	if (likely(!xdp_ring->xdp_tx_active))
-		goto skip;
-
-	ntc = xdp_ring->next_to_clean;
-	for (i = 0; i < xsk_frames; i++) {
-		tx_buf = &xdp_ring->tx_buf[ntc];
-
-		if (tx_buf->raw_buf) {
-			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
-			tx_buf->raw_buf = NULL;
-		} else {
-			xsk_frames++;
-		}
-
-		ntc++;
-		if (ntc >= xdp_ring->count)
-			ntc = 0;
-	}
-skip:
-	tx_desc->cmd_type_offset_bsz = 0;
-	xdp_ring->next_to_clean += xsk_frames;
-	if (xdp_ring->next_to_clean >= cnt)
-		xdp_ring->next_to_clean -= cnt;
-	if (xsk_frames)
-		xsk_tx_completed(xdp_ring->xsk_pool, xsk_frames);
-}
-
 /**
  * ice_xmit_pkt - produce a single HW Tx descriptor out of AF_XDP descriptor
  * @xdp_ring: XDP ring to produce the HW Tx descriptor on
@@ -1051,8 +1083,8 @@ void ice_xsk_clean_xdp_ring(struct ice_tx_ring *xdp_ring)
 	while (ntc != ntu) {
 		struct ice_tx_buf *tx_buf = &xdp_ring->tx_buf[ntc];
 
-		if (tx_buf->raw_buf)
-			ice_clean_xdp_tx_buf(xdp_ring, tx_buf);
+		if (tx_buf->xdp)
+			xsk_buff_free(tx_buf->xdp);
 		else
 			xsk_frames++;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
