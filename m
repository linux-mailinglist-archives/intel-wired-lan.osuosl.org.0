Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AF6A16FAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Jan 2025 16:50:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BE3583B00;
	Mon, 20 Jan 2025 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WoJ6IWa_vWhL; Mon, 20 Jan 2025 15:50:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCC7F811C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737388240;
	bh=pzOr7fNMli4q1VBQRzUTx1vD0QEG2Jn1YWZRMN1HPmQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QeSt3mK9Q5gEMUloKQjntS4uGOind3iGyfnJKbFPmIlJrDswEvmp33nYXfJjEoBig
	 8TKrri8zofr85bqJFj3qs830MZ3qSu7QZQ8fzwSVcjYGyAH2MEwNRNbGj8xy9atwmU
	 mRklbnXssiyg+JLyvuZEr9nfjPeegEcFUxcd1kY0f1FAv36debOtembxn2IjDMmNNJ
	 ZULCW4lEUsTUkX7n03Q90SIiAJF7hm+y3PiT51sm9XiTXPkrl26j4QI8qQcjwU+G+l
	 KIGVnviAcXsGPWWph8o78MPJEqQbLwqJZRzmBG8HZ/1//P/iUOMM2B0JC/QPUp5H2a
	 8vZtvfCRjBnZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCC7F811C2;
	Mon, 20 Jan 2025 15:50:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CD89169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 15:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE78040989
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 15:50:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ock9JD5NlPna for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Jan 2025 15:50:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA525401AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA525401AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA525401AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Jan 2025 15:50:37 +0000 (UTC)
X-CSE-ConnectionGUID: Pb+sJhd/S4Wm62WXl33iCw==
X-CSE-MsgGUID: u1kQgRjbR9iNAWFG0SrbGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="55342356"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="55342356"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 07:50:37 -0800
X-CSE-ConnectionGUID: 3fpZ5ka0TSenAx+fJEuMEg==
X-CSE-MsgGUID: QdNfNdOjSryjxdjqnEundw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106369835"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 07:50:35 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Jan 2025 16:50:15 +0100
Message-Id: <20250120155016.556735-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250120155016.556735-1-maciej.fijalkowski@intel.com>
References: <20250120155016.556735-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737388237; x=1768924237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pXZSZ+TgLF8TssBvRmeh5b/o1fsmuwuJIZalOf+X/G0=;
 b=VhPziKCOSoTI+k1WZ9D/ZkoL1RgNTiM1xQ+HKxWN6zDz4N2e/odM6CPi
 d0n1BzoWYhENCEVxzVssZ0eWVsR8vq87ea/cyAPp0Ld9EjKPdNyMSmM+L
 nKkP+0lsmzhY4TpwWzSDXbEKFES7PrqR/Ep2tDNjNcZAP4Qr6OL6aoR5W
 Ap9x1I4c6Vx4VwVqB881lCC9v84aGecGTdYzNqB8u/Y3TDeiduIcun3Es
 3siYLpnu4+ixWPWP/d1cYWkeNQiw8vkKw0qs4W9tAeLax5VGCcoBQiSIz
 lSGXBzNjKcJjSZDNJBKpy9gOW+Ckq9x5S41zCsCRIK4BqXgbdWm0vT73o
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VhPziKCO
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 2/3] ice: gather page_count()'s
 of each frag right before XDP prog call
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

If we store the pgcnt on few fragments while being in the middle of
gathering the whole frame and we stumbled upon DD bit not being set, we
terminate the NAPI Rx processing loop and come back later on. Then on
next NAPI execution we work on previously stored pgcnt.

Imagine that second half of page was used actively by networking stack
and by the time we came back, stack is not busy with this page anymore
and decremented the refcnt. The page reuse algorithm in this case should
be good to reuse the page but given the old refcnt it will not do so and
attempt to release the page via page_frag_cache_drain() with
pagecnt_bias used as an arg. This in turn will result in negative refcnt
on struct page, which was initially observed by Xu Du.

Therefore, move the page count storage from ice_get_rx_buf() to a place
where we are sure that whole frame has been collected, but before
calling XDP program as it internally can also change the page count of
fragments belonging to xdp_buff.

Fixes: ac0753391195 ("ice: Store page count inside ice_rx_buf")
Reported-and-tested-by: Xu Du <xudu@redhat.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index f2134ad57ead..9aa53ad2d8f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -924,7 +924,6 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
 	struct ice_rx_buf *rx_buf;
 
 	rx_buf = &rx_ring->rx_buf[ntc];
-	rx_buf->pgcnt = page_count(rx_buf->page);
 	prefetchw(rx_buf->page);
 
 	if (!size)
@@ -940,6 +939,22 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
 	return rx_buf;
 }
 
+static void ice_get_pgcnts(struct ice_rx_ring *rx_ring)
+{
+	u32 nr_frags = rx_ring->nr_frags + 1;
+	u32 idx = rx_ring->first_desc;
+	struct ice_rx_buf *rx_buf;
+	u32 cnt = rx_ring->count;
+
+	for (int i = 0; i < nr_frags; i++) {
+		rx_buf = &rx_ring->rx_buf[idx];
+		rx_buf->pgcnt = page_count(rx_buf->page);
+
+		if (++idx == cnt)
+			idx = 0;
+	}
+}
+
 /**
  * ice_build_skb - Build skb around an existing buffer
  * @rx_ring: Rx descriptor ring to transact packets on
@@ -1230,6 +1245,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		if (ice_is_non_eop(rx_ring, rx_desc))
 			continue;
 
+		ice_get_pgcnts(rx_ring);
 		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf, rx_desc);
 		if (rx_buf->act == ICE_XDP_PASS)
 			goto construct_skb;
-- 
2.43.0

