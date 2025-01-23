Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A44A1A672
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 16:01:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9707A6FA8E;
	Thu, 23 Jan 2025 15:01:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FkGgTKlxUXId; Thu, 23 Jan 2025 15:01:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33A5E6FA92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737644508;
	bh=3aXIxT6wuB2f+4W2LLSdqv2pSD7UunyGiUY4u3L4/tA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nc9AmYRGMsOH+L80rDCim0sOvUpajN7xN3mMWTXYgKsqbWfc95fz3kok9x5s+oz6E
	 NMqAe3MYjaoEZJ4j47A7wNWkmNrV5pm5bdlaxa2Guw6wRnGcS8NRafuH1xQYCjFEHU
	 iMiu/oC/lLL3E2yv8lxf2ssdrBC8LkqzheSpUT7rq/SWtp3AQ+0tqviqwaicnALZ3E
	 yxwhaW158OM+9IhI4FjW0UHNtja9SM2/UDYqP5GofgkjtMwFDthG/yKzeb++sTx/jz
	 8GdbNW0QhxPLBmV0Gmg2hra63PDAYGLDl910KzybXzR6jmRx6SpVcNaZ08e6kz0FLy
	 zMFj7gcgUZM0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33A5E6FA92;
	Thu, 23 Jan 2025 15:01:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B73F959
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AE9A4104F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KM5bGNEyasL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 15:01:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA45D4037E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA45D4037E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA45D4037E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:44 +0000 (UTC)
X-CSE-ConnectionGUID: 0ET8EIjjT0SJRYCkgWUTSA==
X-CSE-MsgGUID: 21Oo1IvjSBSZo2CKkZm6Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38293555"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38293555"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 07:01:45 -0800
X-CSE-ConnectionGUID: InM3erYjQkOQ7maZUy6Lng==
X-CSE-MsgGUID: Sw+H/qlUQM+bAEwdgYO47Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111509018"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa003.fm.intel.com with ESMTP; 23 Jan 2025 07:01:41 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Jan 2025 16:01:18 +0100
Message-Id: <20250123150118.583039-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
References: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737644505; x=1769180505;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p7fa+WFNqJza0sxHWYgodldmhz/kPKET0jzp3FaE6vY=;
 b=OO+TcBxrXoBBc3tC0jDBixLXtsDOWIN5PqLMBR0iDB8Vax2gbjD7yzsj
 1ZMsWV3h4IKNQxHzTfLo4KGKMi8uExaWKplemsT1v/gnIHKZN3QTEw+oP
 d4UwgZJtD8+qt4LgHyk8IaedfnnVMqbCg9InkPwuxJ8npNGRuBSh5x7C1
 Xo4IB7rUOl3+SUUiFJZYuYjoMVvG8YurW9UZOIOuZnTDIRW3NFcsfulxx
 IXm1EIcmJagrbi70Xi4HauYm4/mW94xGianEwTm9f77HGbBoN0QoyD6jM
 nM4bsZZGCqKzvuY7o8Gcd9i5MBujBrHN2ceimW5JFq6bEJ3+6F2j3oG/R
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OO+TcBxr
Subject: [Intel-wired-lan] [PATCH v5 iwl-net 3/3] ice: stop storing XDP
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
 xudu@redhat.com, anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
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
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 62 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
 3 files changed, 36 insertions(+), 70 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index cf46bcf143b4..9c9ea4c1b93b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -527,15 +527,14 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
  * @xdp: xdp_buff used as input to the XDP program
  * @xdp_prog: XDP program to run
  * @xdp_ring: ring to be used for XDP_TX action
- * @rx_buf: Rx buffer to store the XDP action
  * @eop_desc: Last descriptor in packet to read metadata from
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
@@ -574,7 +573,7 @@ ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		ret = ICE_XDP_CONSUMED;
 	}
 exit:
-	ice_set_rx_bufs_act(xdp, rx_ring, ret);
+	return ret;
 }
 
 /**
@@ -860,10 +859,8 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
 		xdp_buff_set_frags_flag(xdp);
 	}
 
-	if (unlikely(sinfo->nr_frags == MAX_SKB_FRAGS)) {
-		ice_set_rx_bufs_act(xdp, rx_ring, ICE_XDP_CONSUMED);
+	if (unlikely(sinfo->nr_frags == MAX_SKB_FRAGS))
 		return -ENOMEM;
-	}
 
 	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
 				   rx_buf->page_offset, size);
@@ -1075,12 +1072,12 @@ ice_construct_skb(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp)
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
@@ -1133,29 +1130,34 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
  * @xdp: XDP buffer carrying linear + frags part
  * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
  * @ntc: a current next_to_clean value to be stored at rx_ring
+ * @verdict: return code from XDP program execution
  *
  * Walk through gathered fragments and satisfy internal page
  * recycle mechanism; we take here an action related to verdict
  * returned by XDP program;
  */
 static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
-			    u32 *xdp_xmit, u32 ntc)
+			    u32 *xdp_xmit, u32 ntc, u32 verdict)
 {
 	u32 nr_frags = rx_ring->nr_frags + 1;
 	u32 idx = rx_ring->first_desc;
 	u32 cnt = rx_ring->count;
+	u32 post_xdp_frags = 1;
 	struct ice_rx_buf *buf;
 	int i;
 
-	for (i = 0; i < nr_frags; i++) {
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
 
@@ -1164,6 +1166,17 @@ static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
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
@@ -1190,9 +1203,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	struct ice_tx_ring *xdp_ring = NULL;
 	struct bpf_prog *xdp_prog = NULL;
 	u32 ntc = rx_ring->next_to_clean;
+	u32 cached_ntu, xdp_verdict;
 	u32 cnt = rx_ring->count;
 	u32 xdp_xmit = 0;
-	u32 cached_ntu;
 	bool failure;
 
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
@@ -1255,7 +1268,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 			xdp_buff_clear_frags_flag(xdp);
 		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
-			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc);
+			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
 			break;
 		}
 		if (++ntc == cnt)
@@ -1266,13 +1279,13 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			continue;
 
 		ice_get_pgcnts(rx_ring);
-		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf, rx_desc);
-		if (rx_buf->act == ICE_XDP_PASS)
+		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
+		if (xdp_verdict == ICE_XDP_PASS)
 			goto construct_skb;
 		total_rx_bytes += xdp_get_buff_len(xdp);
 		total_rx_pkts++;
 
-		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc);
+		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
 
 		continue;
 construct_skb:
@@ -1283,12 +1296,9 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
-			rx_buf->act = ICE_XDP_CONSUMED;
-			if (unlikely(xdp_buff_has_frags(xdp)))
-				ice_set_rx_bufs_act(xdp, rx_ring,
-						    ICE_XDP_CONSUMED);
+			xdp_verdict = ICE_XDP_CONSUMED;
 		}
-		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc);
+		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
 
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

