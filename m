Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42253A16FAA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 16:50:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0244407E6;
	Mon, 20 Jan 2025 15:50:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZX71w_9VGRnd; Mon, 20 Jan 2025 15:50:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7BF24071E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737388238;
	bh=q4kteGwQ88X10fSNCz9Gy8zLpDzjF1nIG3/z08gzcGc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YD20w/60cRKDEXzWxhHpFkVxaEN/n67u5vo/2lqc2ekUCnZT+6SEXjRZ49lTn+HsO
	 R80miBDyJvlwHKqNx2w7noaeipgN5TqP6Jp/ptfGMIPGvR9MXXjT2dJop7N7CxJFya
	 IE0M9gs4aWQCAG/TTjIiv3Iabr1dyA/L9Wr21PLXdQq8JaBHOFpbSvr4EYasytflBT
	 XrzxcJ5swrdENzUy9ifxpII/fXzr9bU21tBu44Ec5PMMDMxVX998TNv5gzXZwhqvmy
	 vxd4RxmFnsdzpAa6w74sC7B0olvqawb30rNg+OE+IsIoY7va+IovP4obYM4VNgz6BY
	 Zj4etKFzXmcUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7BF24071E;
	Mon, 20 Jan 2025 15:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C1BF9D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 15:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF7BA40511
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 15:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aAKNtDiInwx9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 15:50:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E67EE401AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E67EE401AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E67EE401AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 15:50:34 +0000 (UTC)
X-CSE-ConnectionGUID: pAJJGJcdTZ+LpS68O6CX7A==
X-CSE-MsgGUID: H0QJA8aBTj+38QHGjhA/dQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="55342351"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="55342351"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 07:50:34 -0800
X-CSE-ConnectionGUID: Je3mdsyATVytxKJAd1fBcQ==
X-CSE-MsgGUID: 3cntvExHRjWLKiWbvNnTdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106369820"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 07:50:32 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Jan 2025 16:50:14 +0100
Message-Id: <20250120155016.556735-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250120155016.556735-1-maciej.fijalkowski@intel.com>
References: <20250120155016.556735-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737388235; x=1768924235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6C5ly2aDSUIl9fpq1LhrbgEUFEXEuLSHrn+Jquq7RA=;
 b=i4EkCi3hf2vjIqovELLOMaX4noPEsqQjBkWMDP77XcTVphbdUupw1k0q
 yhjCTEDuvGpATi6Ob7dI54zNz2jP5O2J71n8xJFMVwVAFDHdCFCCgZedR
 1HQ/O2OmleSdaortuKPMtPBCPH/aNOLFvRkkRuKzfDIpqxm66UHDjRh5u
 t8MZsgO65fYJxnu0Lvhuy36Cr+bVLg+KKBGfoVpIDY7GlaqZMEcsGY7/7
 rQ3ZAyQtDIvGGoU+zI85ixFWiTj3fG3bRiEb0YuckRDrcDD7xVrgGAEpW
 r6WqBApsideA+1TB39o+0NakbksOYPGBK3Z2i79wQTH/fyoVJQEqriPqG
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i4EkCi3h
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 1/3] ice: put Rx buffers after
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

As a nice side effect we get rid of annoying and repetetive three-liner:

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
 drivers/net/ethernet/intel/ice/ice_txrx.c | 68 +++++++++++++----------
 1 file changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5d2d7736fd5f..f2134ad57ead 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1103,6 +1103,38 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 	rx_buf->page = NULL;
 }
 
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
@@ -1120,7 +1152,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
 	unsigned int offset = rx_ring->rx_offset;
 	struct xdp_buff *xdp = &rx_ring->xdp;
-	u32 cached_ntc = rx_ring->first_desc;
 	struct ice_tx_ring *xdp_ring = NULL;
 	struct bpf_prog *xdp_prog = NULL;
 	u32 ntc = rx_ring->next_to_clean;
@@ -1128,7 +1159,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 	u32 xdp_xmit = 0;
 	u32 cached_ntu;
 	bool failure;
-	u32 first;
 
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	if (xdp_prog) {
@@ -1190,6 +1220,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
 			xdp_buff_clear_frags_flag(xdp);
 		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
+			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc);
 			break;
 		}
 		if (++ntc == cnt)
@@ -1205,9 +1236,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
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
@@ -1221,14 +1251,11 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
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
@@ -1257,23 +1284,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
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

