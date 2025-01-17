Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C97EA152AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 16:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C243183880;
	Fri, 17 Jan 2025 15:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vee5OIx_pdXR; Fri, 17 Jan 2025 15:19:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10C17837A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737127166;
	bh=pzOr7fNMli4q1VBQRzUTx1vD0QEG2Jn1YWZRMN1HPmQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XWi3lLo5KnJdtXEVl4b4QQl03ASYo+f4mr+XPRxJN/ZqR5A7weUZyK32nXhBDI3d4
	 beaucByfR5A/L3jp8PwI3SjNUrdwySKHziY8xbjALrO7AvjDmJsrXjbRysgEtO6PrR
	 J+wc/kTCYulJHqdauhKYHmccMxpof9hgywllCb4aX4f7Kj3XS417tx6JisW+WDsZse
	 NRaZayo3uHoSTF+TW7OSIpF+XdIZhA47BMEEhf3zEmSS8cn2e+EkTb3uA57x76w3nR
	 HgGHPLmZ3UKgch777I3Yb/AIB/pPuN43IQa06tJeCLPK85NmtHBj5HXkYIOO+A6WUE
	 BE1qrAIBT3v3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10C17837A1;
	Fri, 17 Jan 2025 15:19:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 34FED31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 15:19:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2389F8364F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 15:19:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kO3CDzWNnkTW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 15:19:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67BE2835C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BE2835C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67BE2835C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 15:19:23 +0000 (UTC)
X-CSE-ConnectionGUID: DU3wewQ3RISEGeF4TEVVNw==
X-CSE-MsgGUID: 8xadvKTgRAqGL5X2Sc3BZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37798410"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37798410"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 07:19:23 -0800
X-CSE-ConnectionGUID: f/O63y89S/OEPIMjy8wdXw==
X-CSE-MsgGUID: lONvAQeWSqirQFUYjTvpuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="136664383"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 17 Jan 2025 07:19:20 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Jan 2025 16:18:59 +0100
Message-Id: <20250117151900.525509-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250117151900.525509-1-maciej.fijalkowski@intel.com>
References: <20250117151900.525509-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737127164; x=1768663164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pXZSZ+TgLF8TssBvRmeh5b/o1fsmuwuJIZalOf+X/G0=;
 b=eIo8bYr4kIenLpxZVZwB9FeuySFrkoVfitmgLdUBJFnMWXlo9Dd5LpQL
 ABhLz2jPZ+hjeblJh9DfozUlNJidFQU3dpre1fMrp8J7Cl/JTk+Ke8KVq
 mhnNnBaNusrLEfpGknjowH6PZ9gOvWqavBVbJ/VdIFD4zO+ph5rMe+CZe
 qG98BS1eaQh5C+Ydtrp3cVnZpPaOFp52eRWFuldCkutd3dfHP9VtJ9hZA
 RZATPSAGfbgQEnIN2XT9SW+gn+IljhWUx/XsswBY5TCa/ROsPvaxx4m0E
 P/uH0Xt6RPrC96YhSJTS2zNtNv06aZSJ5DGI8Vq/F4BAjB786HD/r1ZUO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eIo8bYr4
Subject: [Intel-wired-lan] [PATCH v2 intel-net 2/3] ice: gather
 page_count()'s of each frag right before XDP prog call
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

