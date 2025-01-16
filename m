Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A438A13DE4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 16:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30CEC41E40;
	Thu, 16 Jan 2025 15:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVjKeYOiXiLD; Thu, 16 Jan 2025 15:39:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65F0B41E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737041964;
	bh=ASh7VA1cgJNOj9oyiY+7C+h2KkpxoibUMH6QUVF5Sgg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GybIn7ptUMOqD4d0HxoJNO2zvsMyLTWsvCjLXDziAnIhkr33uD64PalgzgWpA/VJB
	 r+R1HR+aCQl2MXHBkkq6BeDqMaP6bFnbMfS04Lb8a8BgnFbqIEN0WXE8hsIfEq97FK
	 wFaXiuy2ec/M+GB3e+bBuX9dHANGLIGgggF+k/GlnBR9zqyYJB55VzKTIxsYy42PIi
	 1T22fq+6LdHwTHqklkrhDXFdsKgbdRq+4TAbq+0ebskmjwhdRW+p8hI+CAbBP222pm
	 hjTfbBUUrzyyy2CNz9dfTRoYSL+nt0rHN6kQqR3QLzTG5VlpIoTd6DQBrqIo979IYY
	 ucUzy20vjMocw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65F0B41E34;
	Thu, 16 Jan 2025 15:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 515C3B89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 15:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C17C84C1F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 15:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0003a0roiqyz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 15:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6552184C15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6552184C15
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6552184C15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 15:39:21 +0000 (UTC)
X-CSE-ConnectionGUID: zzyOBDKXTESKzKtTjcmN0g==
X-CSE-MsgGUID: I4QmtwuhR5uD3ZK6UgoxGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="25037433"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="25037433"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 07:39:21 -0800
X-CSE-ConnectionGUID: vQ3O71RURhq5GVM5TYhZrA==
X-CSE-MsgGUID: 8OFewnjoRgi82AjqtGLUDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="110541001"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa004.jf.intel.com with ESMTP; 16 Jan 2025 07:39:18 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jan 2025 16:39:07 +0100
Message-Id: <20250116153908.515848-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
References: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737041961; x=1768577961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WrbUpuz6ujfppYsbwvlPMcmybHJlQGyYOtgXdzBiihA=;
 b=LO1UeVLQ/9RW9X3GEDVgqHLj4Pui+B3cNrVdc5qsxTxN/pFl6Cv/PNJv
 0TsaCYdVp6EfR0xTiw582WyB0/Zr8mm12VSdaCbx+B+Zs+MEc5K5KNZOm
 N/Z82d6LcBU8de5damPMu/PksjnXp39jHrWOE3V2caDUIittW1wFUs4ET
 C7Su/tb4xS078rXko5Jy4nLeaHplMMETSxk80fRk1CjbPbzy6Ovs1fTWA
 UsTvzwFsxSR000mA+MW37qpMGLO5GkorSF9vD6K7SzI0zBeGBCZj4OCfg
 2LougIOeTVJybSRMAe8obzroNxBG34PORnb+lrjLGr67ltAv8zd/8To32
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LO1UeVLQ
Subject: [Intel-wired-lan] [PATCH intel-net 2/3] ice: gather page_count()'s
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

Intel networking drivers have a page recycling scheme that is nicely
explained by Bjorn Topel in commit 75aab4e10ae6 ("i40e: avoid premature
Rx buffer reuse"). Please refer to it for better understanding what is
described below.

If we store the page count on a bunch of fragments while being in the
middle of gathering the whole frame and we stumbled upon DD bit not
being set, we terminate the NAPI Rx processing loop and come back later
on. Then, on next NAPI execution, the page recycling algorithm will work
on previously stored refcount of underlying page.

Imagine that second half of page was used actively by networking stack
and by the time we came back, stack is not busy with this page anymore
and decremented the refcount. The page reuse logic in this case should
be good to reuse the page but given the old refcount it will not do so
and attempt to release the page via page_frag_cache_drain() with
pagecnt_bias used as an arg. This in turn will result in negative
refcount on struct page, which was initially observed by Xu Du.

Therefore to fix this, move the page count storage from ice_get_rx_buf()
to a place where we are sure that whole frame has been collected and
processing of this frame will happen under current NAPI instance, but
before calling XDP program as it internally can also change the page
count of fragments belonging to xdp_buff.

Fixes: ac0753391195 ("ice: Store page count inside ice_rx_buf")
Reported-and-tested-by: Xu Du <xudu@redhat.com>
Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 501df1bc881d..7cd07e757d3c 100644
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
@@ -1229,6 +1244,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		if (ice_is_non_eop(rx_ring, rx_desc))
 			continue;
 
+		ice_get_pgcnts(rx_ring);
 		ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf, rx_desc);
 		if (rx_buf->act == ICE_XDP_PASS)
 			goto construct_skb;
-- 
2.43.0

