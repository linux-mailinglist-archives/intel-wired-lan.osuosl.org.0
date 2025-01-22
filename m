Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B20EEA194C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 16:11:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D6B080AB2;
	Wed, 22 Jan 2025 15:11:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgcHEe4snyys; Wed, 22 Jan 2025 15:11:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 652AC83FED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737558666;
	bh=yQv8jcFOXLiNGHnfoV4Qy3g39w1/zIETLx785Uad2ow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kk5lExBWgKZS9kt/Ckli8FFI+NgjQL2skFBXclKrFaJU0Mt63LZqbb7OcwBnwFr4b
	 5HtfSNfkQJbT+/wxh10qR/O7TsnTE2c42L2XiRkhl3T8vGONE2yJtrvWkSpK5hCXmN
	 L5umYKU9KGRa/67q4StwC2YF+8IztjSvBFArojvg1+t1At/PwM0HDlevC4kJntNndw
	 z8VD5Z4qXck7FjUvgyd6GgVsBtmnk6tEwT7FbYf/UdtESkwf+qERHe8PKLA94tVy5i
	 eJrwj+mV5AodYfWuxpn+BnVGy6GckvUoWlg7ICaAx0Z4db0Jpfm2nBpGiftp1kOxJU
	 j7aXJDkXiENwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 652AC83FED;
	Wed, 22 Jan 2025 15:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B2F4CD7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 15:11:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 933A36076A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 15:11:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sqf9uQlE0R5d for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 15:11:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4526A607BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4526A607BC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4526A607BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 15:11:01 +0000 (UTC)
X-CSE-ConnectionGUID: 8yJpuxNCTbaK93C9esU2JA==
X-CSE-MsgGUID: IU/yNpF2R9CP6uA8cY7MHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38125825"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38125825"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 07:11:02 -0800
X-CSE-ConnectionGUID: X1Fg2wykQECnGxUf6X178Q==
X-CSE-MsgGUID: UFO5O03WQAWmlzM9qzE+CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107611412"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa007.jf.intel.com with ESMTP; 22 Jan 2025 07:10:58 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2025 16:10:44 +0100
Message-Id: <20250122151046.574061-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
References: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737558662; x=1769094662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hft2wVdYLUDYfDt0VKlys29U7YFxb6/3BG5AqbcCFiM=;
 b=AwDSg3yn/PhxIjJaldUmAQyrKf1JGlNPGoH4lg7eyqYEnr7mGS8Ox4iW
 IhESDeNmC0RsLrI3Ua+h2ipn0lFTmJUwMs9IFq+mfSDOWN0O0RGBgzIHl
 PAZFfzHxsCNSjChSa83moaIdughrcBemRY+yii/WESob4BsmzPq+6qJ3J
 jpMVidMAVMaPzUPayYQ3JXXCFvUqC8++Hbd2S54LiSCIzzN1B8JVioVmG
 tOG8C6+tHYbspbQrID+n1EP9c/ItC5tJqC9PeBoCz38cA3KCdPVrtqIEG
 cAjuleg88+aOIsal/UbO6FEJHvw3m5FuLYAELX4FIIEIqwFZJWRYN9uYP
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AwDSg3yn
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 1/3] ice: put Rx buffers after
 being done with current frame
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

Introduce a new helper ice_put_rx_mbuf() that will go through gathered
frags from current frame and will call ice_put_rx_buf() on them. Current
logic that was supposed to simplify and optimize the driver where we go
through a batch of all buffers processed in current NAPI instance turned
out to be broken for jumbo frames and very heavy load that was coming
from both multi-thread iperf and nginx/wrk pair between server and
client. The delay introduced by approach that we are dropping is simply
too big and we need to take the decision regarding page
recycling/releasing as quick as we can.

While at it, address an error path of ice_add_xdp_frag() - we were
missing buffer putting from day 1 there.

As a nice side effect we get rid of annoying and repetitive three-liner:

	xdp->data = NULL;
	rx_ring->first_desc = ntc;
	rx_ring->nr_frags = 0;

by embedding it within introduced routine.

Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
Reported-and-tested-by: Xu Du <xudu@redhat.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 79 ++++++++++++++---------
 1 file changed, 50 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5d2d7736fd5f..e173d9c98988 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1103,6 +1103,49 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 	rx_buf->page = NULL;
 }
 
+/**
+ * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
+ * @rx_ring: Rx ring with all the auxiliary data
+ * @xdp: XDP buffer carrying linear + frags part
+ * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
+ * @ntc: a current next_to_clean value to be stored at rx_ring
+ *
+ * Walk through gathered fragments and satisfy internal page
+ * recycle mechanism; we take here an action related to verdict
+ * returned by XDP program;
+ */
+static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
+			    u32 *xdp_xmit, u32 ntc)
+{
+	u32 nr_frags = rx_ring->nr_frags + 1;
+	u32 idx = rx_ring->first_desc;
+	u32 cnt = rx_ring->count;
+	struct ice_rx_buf *buf;
+	int i;
+
+	for (i = 0; i < nr_frags; i++) {
+		buf = &rx_ring->rx_buf[idx];
+
+		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
+			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
+			*xdp_xmit |= buf->act;
+		} else if (buf->act & ICE_XDP_CONSUMED) {
+			buf->pagecnt_bias++;
+		} else if (buf->act == ICE_XDP_PASS) {
+			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
+		}
+
+		ice_put_rx_buf(rx_ring, buf);
+
+		if (++idx == cnt)
+			idx = 0;
+	}
+
+	xdp->data = NULL;
+	rx_ring->first_desc = ntc;
+	rx_ring->nr_frags = 0;
+}
+
 /**
  * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -1120,7 +1163,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	unsigned int offset = rx_ring->rx_offset;
 	struct xdp_buff *xdp = &rx_ring->xdp;
-	u32 cached_ntc = rx_ring->first_desc;
 	struct ice_tx_ring *xdp_ring = NULL;
 	struct bpf_prog *xdp_prog = NULL;
 	u32 ntc = rx_ring->next_to_clean;
@@ -1128,7 +1170,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	u32 xdp_xmit = 0;
 	u32 cached_ntu;
 	bool failure;
-	u32 first;
 
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	if (xdp_prog) {
@@ -1190,6 +1231,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 			xdp_buff_clear_frags_flag(xdp);
 		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
+			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc);
 			break;
 		}
 		if (++ntc == cnt)
@@ -1205,9 +1247,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_bytes += xdp_get_buff_len(xdp);
 		total_rx_pkts++;
 
-		xdp->data = NULL;
-		rx_ring->first_desc = ntc;
-		rx_ring->nr_frags = 0;
+		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc);
+
 		continue;
 construct_skb:
 		if (likely(ice_ring_uses_build_skb(rx_ring)))
@@ -1221,14 +1262,11 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			if (unlikely(xdp_buff_has_frags(xdp)))
 				ice_set_rx_bufs_act(xdp, rx_ring,
 						    ICE_XDP_CONSUMED);
-			xdp->data = NULL;
-			rx_ring->first_desc = ntc;
-			rx_ring->nr_frags = 0;
-			break;
 		}
-		xdp->data = NULL;
-		rx_ring->first_desc = ntc;
-		rx_ring->nr_frags = 0;
+		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc);
+
+		if (!skb)
+			break;
 
 		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
 		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
@@ -1257,23 +1295,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_pkts++;
 	}
 
-	first = rx_ring->first_desc;
-	while (cached_ntc != first) {
-		struct ice_rx_buf *buf = &rx_ring->rx_buf[cached_ntc];
-
-		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
-			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
-			xdp_xmit |= buf->act;
-		} else if (buf->act & ICE_XDP_CONSUMED) {
-			buf->pagecnt_bias++;
-		} else if (buf->act == ICE_XDP_PASS) {
-			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
-		}
-
-		ice_put_rx_buf(rx_ring, buf);
-		if (++cached_ntc >= cnt)
-			cached_ntc = 0;
-	}
 	rx_ring->next_to_clean = ntc;
 	/* return up to cleaned_count buffers to hardware */
 	failure = ice_alloc_rx_bufs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
-- 
2.43.0

