Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FDA1A670
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 16:01:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3029384BDC;
	Thu, 23 Jan 2025 15:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vt-iseoZJo6G; Thu, 23 Jan 2025 15:01:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56AB584BE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737644505;
	bh=MkPKZToaZCsECzPS1rydQlansh/o42MRGeWbASRugXQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vGflKOJoW6W9vsbAoUXTVCo1Ucm02H4vYP2/Kn22yuiHrQQAc+zzMxLR9/Q9PBAAW
	 QMI6l4PHdjjFOv/VJcZ4acB0i5OvADebwuPiIF6kLoz97em4TKn8Zk8YwctNTSH9Rx
	 EUBWa1UILh9lytNYLVlOfgNwCPSq2w80fkYZ7Y6OD8fHXcmIWoSNiT6Xe3nlFIVXA+
	 3mE9wqGH1EFkvYbrrCRIaT5KvdaYWFnC//xnXZ4mMkJZ6FfrvuMQZjANcVR5U9qV2S
	 V6N4ZVymSqljBmmsdAqydi/BWuWifosAAVVb2q1VCjtGfnM+p4J71RmL5noZPOJZOW
	 CvYFg6TfRMNDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56AB584BE1;
	Thu, 23 Jan 2025 15:01:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B26DCB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E3AD40FD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpFL9FfBzrma for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 15:01:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 90DF54037E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90DF54037E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 90DF54037E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 15:01:41 +0000 (UTC)
X-CSE-ConnectionGUID: AtpBAmRETH2fVzbc7xxamw==
X-CSE-MsgGUID: y7XUz145TNyXqfxxcVMgtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38293547"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38293547"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 07:01:42 -0800
X-CSE-ConnectionGUID: u5xS6IPDQWKWU/vdW8SD6Q==
X-CSE-MsgGUID: AshwNMZgRuuZI0aqee1lNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111508972"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa003.fm.intel.com with ESMTP; 23 Jan 2025 07:01:37 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 Jan 2025 16:01:17 +0100
Message-Id: <20250123150118.583039-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
References: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737644502; x=1769180502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0JmrU+X7KUzqn1Xng5EfO7ePY6MpG/nVOorayH3A7kU=;
 b=BVJdsGgx75LhFMRqyoUtSw2YD3H6bzGbrE5GL7S//mHnnJzpg6ZzTk+b
 YdNoG4lLu2ME8Lox7b6n+v1TvN1JqN1fibyDm304VppbBBmQDMDyyvL7q
 lpXRbb0qmnYBspl19QOlW/PEL0yBym7MgQ/GQ3wcv7F82KtBjYyUoJ2y4
 +A4JbyBV/UJdoxrBWp51FglvwflxTGO8+6Pwxse60a/xsKxj2Fo9aEk3h
 8J67Jyj2GFTKXT1b8ejPl7u/yAQtA/0FqPAJxTbxvXpaGR4+Y1mm1fr19
 AocXRefSlI06IUbIltlj9WCJvqnsF+iYMl4mNZCI2HFGqAWeqldwDKkK6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BVJdsGgx
Subject: [Intel-wired-lan] [PATCH v5 iwl-net 2/3] ice: gather page_count()'s
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
 xudu@redhat.com, anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
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
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index e173d9c98988..cf46bcf143b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -924,7 +924,6 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
 	struct ice_rx_buf *rx_buf;
 
 	rx_buf = &rx_ring->rx_buf[ntc];
-	rx_buf->pgcnt = page_count(rx_buf->page);
 	prefetchw(rx_buf->page);
 
 	if (!size)
@@ -940,6 +939,31 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
 	return rx_buf;
 }
 
+/**
+ * ice_get_pgcnts - grab page_count() for gathered fragments
+ * @rx_ring: Rx descriptor ring to store the page counts on
+ *
+ * This function is intended to be called right before running XDP
+ * program so that the page recycling mechanism will be able to take
+ * a correct decision regarding underlying pages; this is done in such
+ * way as XDP program can change the refcount of page
+ */
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
@@ -1241,6 +1265,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		if (ice_is_non_eop(rx_ring, rx_desc))
 			continue;
 
+		ice_get_pgcnts(rx_ring);
 		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf, rx_desc);
 		if (rx_buf->act == ICE_XDP_PASS)
 			goto construct_skb;
-- 
2.43.0

