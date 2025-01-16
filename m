Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EDFA13DE5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 16:39:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 587F46FAC7;
	Thu, 16 Jan 2025 15:39:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ycY__Izn9zw9; Thu, 16 Jan 2025 15:39:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39BF26FAD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737041967;
	bh=/+YVCe8uSx51fGIct5LjhK8upVeliuTZGwqYuxLrUPY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fy5S3NQuH9vIZ2TW67PoYphN0OtIXRC7F9hC1/sgBEmxMEf06fY6vM3FtssSKnXTk
	 8owxJtOAbBKcDQXrM4aFRtckWQxXRoA1ib21pKF9Es496vn1tVM/0WPHNczJkHeOHu
	 JWzeZ/y38ctS8yMPezfsuYLvHz37qVP50MpOsBBoZOs37kEGrf+zI5DJwDP2eJ4xco
	 yX9Hotbsl5pEOWeF+hgfnFW/J6tzJBArf2+LmKt/rpZv5u0B7pUc9uHKPcFHrK+syU
	 RsqDpz+UvGZemzagtIlCpmBK3rGl5fWmKXpqZAnTY2S3hp0SzsHobSjyr7V+a92EgW
	 uS8EpZLvvtD8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39BF26FAD1;
	Thu, 16 Jan 2025 15:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E0F6B8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 15:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4417384C1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 15:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rCuobAD8G67n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 15:39:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52B2384C1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52B2384C1A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52B2384C1A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 15:39:24 +0000 (UTC)
X-CSE-ConnectionGUID: kdcWvAKsSFeMyS/GSewbmg==
X-CSE-MsgGUID: FS1MxTZXSnaOzkx1NfU1wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="25037446"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="25037446"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 07:39:24 -0800
X-CSE-ConnectionGUID: sSHSOrr5RLWrVHpeVTzfOQ==
X-CSE-MsgGUID: 7VliFeStSwqG//F6hYMcWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="110541014"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa004.jf.intel.com with ESMTP; 16 Jan 2025 07:39:21 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jan 2025 16:39:08 +0100
Message-Id: <20250116153908.515848-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
References: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737041964; x=1768577964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mluKAu/yMkxWFMrRSnAF5CeGpd/LAY0IeMrJ3iak5Wg=;
 b=IjuRsbety3fyDj2yTjWNP3Ve3QLBbiBfDPbLPjCBgGm9c+ePSeQgLLqs
 +9+c4SOnI+OLcjrMBO0aYjdnC30sWX6Tkj9ZaKSaz43lgIKqgv9/DsIMg
 xOFBFYSko/By163lci/ILieLiS/gIYhDgNmIT4WKqiAfsGym57JPoSW/v
 3YVhX8H2s/GW0UqtZskEv7yvImdL6Iy2+v7xTF9svBMKTUDEy4QqQ1tTx
 FVLG8qE8gXVi9yi3Wl69l1P+sH/eL1QoGCntoJglPrh+xYiDuBOV8vzxe
 U0iIpphXapmkUH4ANq4ZQLDsSq6pS+uJ6P8hjxh7ahHnj6qoJaE9QXYNw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IjuRsbet
Subject: [Intel-wired-lan] [PATCH intel-net 3/3] ice: stop storing XDP
 verdict within ice_rx_buf
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 xudu@redhat.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, jmaxwell@redhat.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Idea behind having ice_rx_buf::act was to simplify and speed up the Rx
data path by walking through buffers that were representing cleaned HW
Rx descriptors. Since it caused us a major headache recently and we
rolled back to old approach that 'puts' Rx buffers right after running
XDP prog/creating skb, this is useless now and should be removed.

Get rid of ice_rx_buf::act and related logic. We still need to take care
of a corner case where XDP program releases a particular fragment.

Make ice_run_xdp() to return its result and use it within
ice_put_rx_mbuf().

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 61 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
 3 files changed, 36 insertions(+), 69 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 7cd07e757d3c..821bd94b3935 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -532,10 +532,10 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
  *
  * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
  */
-static void
+static u32
 ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 	    struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring,
-	    struct ice_rx_buf *rx_buf, union ice_32b_rx_flex_desc *eop_desc)
+	    union ice_32b_rx_flex_desc *eop_desc)
 {
 	unsigned int ret = ICE_XDP_PASS;
 	u32 act;
@@ -574,7 +574,7 @@ ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		ret = ICE_XDP_CONSUMED;
 	}
 exit:
-	ice_set_rx_bufs_act(xdp, rx_ring, ret);
+	return ret;
 }
 
 /**
@@ -860,10 +860,8 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		xdp_buff_set_frags_flag(xdp);
 	}
 
-	if (unlikely(sinfo->nr_frags == MAX_SKB_FRAGS)) {
-		ice_set_rx_bufs_act(xdp, rx_ring, ICE_XDP_CONSUMED);
+	if (unlikely(sinfo->nr_frags == MAX_SKB_FRAGS))
 		return -ENOMEM;
-	}
 
 	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
 				   rx_buf->page_offset, size);
@@ -1066,12 +1064,12 @@ ice_construct_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
 				rx_buf->page_offset + headlen, size,
 				xdp->frame_sz);
 	} else {
-		/* buffer is unused, change the act that should be taken later
-		 * on; data was copied onto skb's linear part so there's no
+		/* buffer is unused, restore biased page count in Rx buffer;
+		 * data was copied onto skb's linear part so there's no
 		 * need for adjusting page offset and we can reuse this buffer
 		 * as-is
 		 */
-		rx_buf->act = ICE_SKB_CONSUMED;
+		rx_buf->pagecnt_bias++;
 	}
 
 	if (unlikely(xdp_buff_has_frags(xdp))) {
@@ -1119,22 +1117,27 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 }
 
 static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
-			    u32 *xdp_xmit)
+			    u32 *xdp_xmit, u32 verdict)
 {
 	u32 nr_frags = rx_ring->nr_frags + 1;
 	u32 idx = rx_ring->first_desc;
 	u32 cnt = rx_ring->count;
+	u32 post_xdp_frags = 1;
 	struct ice_rx_buf *buf;
+	int i;
 
-	for (int i = 0; i < nr_frags; i++) {
+	if (unlikely(xdp_buff_has_frags(xdp)))
+		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
+
+	for (i = 0; i < post_xdp_frags; i++) {
 		buf = &rx_ring->rx_buf[idx];
 
-		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
 			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
-			*xdp_xmit |= buf->act;
-		} else if (buf->act & ICE_XDP_CONSUMED) {
+			*xdp_xmit |= verdict;
+		} else if (verdict & ICE_XDP_CONSUMED) {
 			buf->pagecnt_bias++;
-		} else if (buf->act == ICE_XDP_PASS) {
+		} else if (verdict == ICE_XDP_PASS) {
 			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
 		}
 
@@ -1143,6 +1146,17 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		if (++idx == cnt)
 			idx = 0;
 	}
+	/* handle buffers that represented frags released by XDP prog;
+	 * for these we keep pagecnt_bias as-is; refcount from struct page
+	 * has been decremented within XDP prog and we do not have to increase
+	 * the biased refcnt
+	 */
+	for (; i < nr_frags; i++) {
+		buf = &rx_ring->rx_buf[idx];
+		ice_put_rx_buf(rx_ring, buf);
+		if (++idx == cnt)
+			idx = 0;
+	}
 
 	xdp->data = NULL;
 	rx_ring->first_desc = ntc;
@@ -1169,9 +1183,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	struct ice_tx_ring *xdp_ring = NULL;
 	struct bpf_prog *xdp_prog = NULL;
 	u32 ntc = rx_ring->next_to_clean;
+	u32 cached_ntu, xdp_verdict;
 	u32 cnt = rx_ring->count;
 	u32 xdp_xmit = 0;
-	u32 cached_ntu;
 	bool failure;
 
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
@@ -1234,7 +1248,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 			xdp_buff_clear_frags_flag(xdp);
 		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
-			ice_put_rx_mbuf(rx_ring, xdp, NULL);
+			ice_put_rx_mbuf(rx_ring, xdp, NULL, ICE_XDP_CONSUMED);
 			break;
 		}
 		if (++ntc == cnt)
@@ -1245,13 +1259,13 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			continue;
 
 		ice_get_pgcnts(rx_ring);
-		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf, rx_desc);
-		if (rx_buf->act == ICE_XDP_PASS)
+		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
+		if (xdp_verdict == ICE_XDP_PASS)
 			goto construct_skb;
 		total_rx_bytes += xdp_get_buff_len(xdp);
 		total_rx_pkts++;
 
-		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit);
+		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, xdp_verdict);
 
 		continue;
 construct_skb:
@@ -1262,12 +1276,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
-			rx_buf->act = ICE_XDP_CONSUMED;
-			if (unlikely(xdp_buff_has_frags(xdp)))
-				ice_set_rx_bufs_act(xdp, rx_ring,
-						    ICE_XDP_CONSUMED);
+			xdp_verdict = ICE_XDP_CONSUMED;
 		}
-		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit);
+		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, xdp_verdict);
 
 		if (!skb)
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index cb347c852ba9..806bce701df3 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -201,7 +201,6 @@ struct ice_rx_buf {
 	struct page *page;
 	unsigned int page_offset;
 	unsigned int pgcnt;
-	unsigned int act;
 	unsigned int pagecnt_bias;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 79f960c6680d..6cf32b404127 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -5,49 +5,6 @@
 #define _ICE_TXRX_LIB_H_
 #include "ice.h"
 
-/**
- * ice_set_rx_bufs_act - propagate Rx buffer action to frags
- * @xdp: XDP buffer representing frame (linear and frags part)
- * @rx_ring: Rx ring struct
- * act: action to store onto Rx buffers related to XDP buffer parts
- *
- * Set action that should be taken before putting Rx buffer from first frag
- * to the last.
- */
-static inline void
-ice_set_rx_bufs_act(struct xdp_buff *xdp, const struct ice_rx_ring *rx_ring,
-		    const unsigned int act)
-{
-	u32 sinfo_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
-	u32 nr_frags = rx_ring->nr_frags + 1;
-	u32 idx = rx_ring->first_desc;
-	u32 cnt = rx_ring->count;
-	struct ice_rx_buf *buf;
-
-	for (int i = 0; i < nr_frags; i++) {
-		buf = &rx_ring->rx_buf[idx];
-		buf->act = act;
-
-		if (++idx == cnt)
-			idx = 0;
-	}
-
-	/* adjust pagecnt_bias on frags freed by XDP prog */
-	if (sinfo_frags < rx_ring->nr_frags && act == ICE_XDP_CONSUMED) {
-		u32 delta = rx_ring->nr_frags - sinfo_frags;
-
-		while (delta) {
-			if (idx == 0)
-				idx = cnt - 1;
-			else
-				idx--;
-			buf = &rx_ring->rx_buf[idx];
-			buf->pagecnt_bias--;
-			delta--;
-		}
-	}
-}
-
 /**
  * ice_test_staterr - tests bits in Rx descriptor status and error fields
  * @status_err_n: Rx descriptor status_error0 or status_error1 bits
-- 
2.43.0

