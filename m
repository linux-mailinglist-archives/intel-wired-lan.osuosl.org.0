Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 652B66837B8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:45:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6F3D41732;
	Tue, 31 Jan 2023 20:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6F3D41732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197933;
	bh=NzIZaf/tR6wkzG0VYr/ZRBkgPp2pbaKui/N5TjlR8Lw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rb0Qg0YH+B9yyV43Al6EKOS2xQ8XZZ8QfRDpclLh17CTR9tUDvlwvRD/Pyqg8sstd
	 nH4yOD+ZCRWLpr5+Opn0NCcrOflAoy8GvYNWg1AnMAI27YYRJ8EEVcr/BsJk2+qTPb
	 SG752OSHJheuNCyFGZcY/8CTSJBpJZAreMhg73u8RnOGnALKFL8G0bL+SWXizoGVw2
	 9s59u0vAvFtNNqv6DJsG7JlmRSIafP251Hkx5oeYlhDGorDB+sQmVSVevRHCrjQh7F
	 oDmOo7fSqCvnrC9E9J5h7scFkCHwHloRM9TIP7X3W6AKHcvbmE7luCjLsdxUnhdS+0
	 9wA+UXr9eBXtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Diwnq2dKKF3F; Tue, 31 Jan 2023 20:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2920841681;
	Tue, 31 Jan 2023 20:45:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2920841681
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 325941BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BAFA60BF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BAFA60BF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyXIK8HnIBKt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 355B260BEA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 355B260BEA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167120"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167120"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595238"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595238"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:16 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:44:56 +0100
Message-Id: <20230131204506.219292-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197920; x=1706733920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dCk88//pfiSfe8GTZwrDWMX8+27ShPPaRP3/w8DagsI=;
 b=M53Id0zKpGuJi2yE+znURHa1ns8slXHgvNCDzKR1USb2/qaEF3WHOO5Q
 iVWpdmsHqeLOTQ+btJjxqMSZ8WgEdw+BVJAUtlc6i2e/JCnpZBmUBtIhv
 TW+DlYj/do0TZj+OuFgz9aJqsTVwhVk5fB1r/smlH8yo/KFcIFmXW3XoH
 O2ejZf4HHBbN4xqRBk/xKvSlkVfuWoJ+s1/rob51MdwI8igHqBP85/dII
 YfzKAi2PP5WmoSXN4C16vENHRC9pUPgchzr08qgvmRmKlj3lIM3+u1gR8
 0E9DdqUWUndodhT1EzNeJTqUd13z2SuNUleRJJVNtnfxmPy+PO8fvD9IU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M53Id0zK
Subject: [Intel-wired-lan] [PATCH bpf-next 03/13] ice: store page count
 inside ice_rx_buf
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

This will allow us to avoid carrying additional auxiliary array of page
counts when dealing with XDP multi buffer support. Previously combining
fragmented frame to skb was not affected in the same way as XDP would be
as whole frame is needed to be in place before executing XDP prog.
Therefore, when going through HW Rx descriptors one-by-one, calls to
ice_put_rx_buf() need to be taken *after* running XDP prog on a
potentially multi buffered frame, so some additional storage of
page count is needed.

By adding page count to rx buf, it will make it easier to walk through
processed entries at the end of rx cleaning routine and decide whether
or not buffers should be recycled.

While at it, bump ice_rx_buf::pagecnt_bias from u16 up to u32. It was
proven many times that calculations on variables smaller than standard
register size are harmful. This was also the case during experiments
with embedding page count to ice_rx_buf - when this was added as u16 it
had a performance impact.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 26 +++++++++--------------
 drivers/net/ethernet/intel/ice/ice_txrx.h |  3 ++-
 2 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 15983c54210a..03edabd3ec80 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -791,7 +791,6 @@ ice_rx_buf_adjust_pg_offset(struct ice_rx_buf *rx_buf, unsigned int size)
 /**
  * ice_can_reuse_rx_page - Determine if page can be reused for another Rx
  * @rx_buf: buffer containing the page
- * @rx_buf_pgcnt: rx_buf page refcount pre xdp_do_redirect() call
  *
  * If page is reusable, we have a green light for calling ice_reuse_rx_page,
  * which will assign the current buffer to the buffer that next_to_alloc is
@@ -799,7 +798,7 @@ ice_rx_buf_adjust_pg_offset(struct ice_rx_buf *rx_buf, unsigned int size)
  * page freed
  */
 static bool
-ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf, int rx_buf_pgcnt)
+ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 {
 	unsigned int pagecnt_bias = rx_buf->pagecnt_bias;
 	struct page *page = rx_buf->page;
@@ -810,7 +809,7 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf, int rx_buf_pgcnt)
 
 #if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
-	if (unlikely((rx_buf_pgcnt - pagecnt_bias) > 1))
+	if (unlikely(rx_buf->pgcnt - pagecnt_bias > 1))
 		return false;
 #else
 #define ICE_LAST_OFFSET \
@@ -894,19 +893,17 @@ ice_reuse_rx_page(struct ice_rx_ring *rx_ring, struct ice_rx_buf *old_buf)
  * ice_get_rx_buf - Fetch Rx buffer and synchronize data for use
  * @rx_ring: Rx descriptor ring to transact packets on
  * @size: size of buffer to add to skb
- * @rx_buf_pgcnt: rx_buf page refcount
  *
  * This function will pull an Rx buffer from the ring and synchronize it
  * for use by the CPU.
  */
 static struct ice_rx_buf *
-ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
-	       int *rx_buf_pgcnt)
+ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size)
 {
 	struct ice_rx_buf *rx_buf;
 
 	rx_buf = &rx_ring->rx_buf[rx_ring->next_to_clean];
-	*rx_buf_pgcnt =
+	rx_buf->pgcnt =
 #if (PAGE_SIZE < 8192)
 		page_count(rx_buf->page);
 #else
@@ -1042,15 +1039,13 @@ ice_construct_skb(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
  * ice_put_rx_buf - Clean up used buffer and either recycle or free
  * @rx_ring: Rx descriptor ring to transact packets on
  * @rx_buf: Rx buffer to pull data from
- * @rx_buf_pgcnt: Rx buffer page count pre xdp_do_redirect()
  *
  * This function will update next_to_clean and then clean up the contents
  * of the rx_buf. It will either recycle the buffer or unmap it and free
  * the associated resources.
  */
 static void
-ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
-	       int rx_buf_pgcnt)
+ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 {
 	u16 ntc = rx_ring->next_to_clean + 1;
 
@@ -1061,7 +1056,7 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf,
 	if (!rx_buf)
 		return;
 
-	if (ice_can_reuse_rx_page(rx_buf, rx_buf_pgcnt)) {
+	if (ice_can_reuse_rx_page(rx_buf)) {
 		/* hand second half of page back to the ring */
 		ice_reuse_rx_page(rx_ring, rx_buf);
 	} else {
@@ -1137,7 +1132,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		unsigned char *hard_start;
 		unsigned int size;
 		u16 stat_err_bits;
-		int rx_buf_pgcnt;
 		u16 vlan_tag = 0;
 		u16 rx_ptype;
 
@@ -1166,7 +1160,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			if (rx_desc->wb.rxdid == FDIR_DESC_RXDID &&
 			    ctrl_vsi->vf)
 				ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
-			ice_put_rx_buf(rx_ring, NULL, 0);
+			ice_put_rx_buf(rx_ring, NULL);
 			cleaned_count++;
 			continue;
 		}
@@ -1175,7 +1169,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			ICE_RX_FLX_DESC_PKT_LEN_M;
 
 		/* retrieve a buffer from the ring */
-		rx_buf = ice_get_rx_buf(rx_ring, size, &rx_buf_pgcnt);
+		rx_buf = ice_get_rx_buf(rx_ring, size);
 
 		if (!size) {
 			xdp->data = NULL;
@@ -1209,7 +1203,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_pkts++;
 
 		cleaned_count++;
-		ice_put_rx_buf(rx_ring, rx_buf, rx_buf_pgcnt);
+		ice_put_rx_buf(rx_ring, rx_buf);
 		continue;
 construct_skb:
 		if (skb) {
@@ -1228,7 +1222,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			break;
 		}
 
-		ice_put_rx_buf(rx_ring, rx_buf, rx_buf_pgcnt);
+		ice_put_rx_buf(rx_ring, rx_buf);
 		cleaned_count++;
 
 		/* skip if it is NOP desc */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index b0c39d557008..717355c6d4c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -172,7 +172,8 @@ struct ice_rx_buf {
 	dma_addr_t dma;
 	struct page *page;
 	unsigned int page_offset;
-	u16 pagecnt_bias;
+	unsigned int pgcnt;
+	unsigned int pagecnt_bias;
 };
 
 struct ice_q_stats {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
