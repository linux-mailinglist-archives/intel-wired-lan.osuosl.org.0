Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6748894A65F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 12:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E488280D48;
	Wed,  7 Aug 2024 10:55:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i4KLpArPobOE; Wed,  7 Aug 2024 10:55:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DA9580CE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723028123;
	bh=HynMHjYoknw2V88buFBZBXBZH4eCeVT912CtuLA2nMk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oiI5TXVHvRPEds2oVTkXF0V68UgmGQqjfApxmgNfIehSDfcUQXWIKap02nkByWuS9
	 guGggNMq7Yka1e0wt7ZOUfaFuak5dytJ7qmu9jEMoNYWu4jVsVSTqQ1yGSuGp1LIKa
	 4FYnSV+isRQPWHo+gsRjBCpLF4IRVZC4kvAuAtyw/HhjQtD3hn1WWXbPtXomVnnHYS
	 qjIT/5lIzyhQzUnU5wZIt+wzlnOzVQPGCiF9IGwkdWk2o/q7LefoGuDjdu+PL+D3Zx
	 nffeoH3lWbZ19DMA5u1E1EHlsOCUynJ3yk4Cgim1GoykQAq/mTZWUOpYcqP59ahr1U
	 1G9vE+cW2Vlxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DA9580CE1;
	Wed,  7 Aug 2024 10:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66DAB1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E8B580D2F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rh5YhwYWjHyA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 10:55:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 76E2780CE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76E2780CE1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76E2780CE1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 10:55:20 +0000 (UTC)
X-CSE-ConnectionGUID: 78g2pvnGQXqa12HW0WgNYg==
X-CSE-MsgGUID: NU6BTSfPQuC/xR8UYnqZug==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31664385"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="31664385"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 03:55:19 -0700
X-CSE-ConnectionGUID: ZdRm4x6sToW2r9LnvbEmew==
X-CSE-MsgGUID: mL/dideMRtGqwFK73M/SjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="87757260"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa001.fm.intel.com with ESMTP; 07 Aug 2024 03:55:17 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Aug 2024 12:53:24 +0200
Message-Id: <20240807105326.86665-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723028120; x=1754564120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jusq7YWDx6mJtyPjWnz6er9sRRpOwRpAmltB9HEnGBM=;
 b=XnIZeKGlxii6c+P4d+IO+Br5cjuKXzEEJtEqo3BHWpbLCuGPPDEU/zvT
 BG3Jpdc6MfckQIPnPWU0JgyPbP0hZFWFoI+Cegnq12+SggkEC2yPj3WEi
 n3OYWnTRFJ7nPUf8L12hFP0v7pDRxvqschgC5OlVimbF/BtgQv1/cJmw6
 1SSakAZJ5uJLGd20Q6JE2J3hjfZGOcU3jMsjV362WdXeJPNZCCs97xRhq
 WjGvPlAcycdtRKEHxxyB1/lMjkuU4Q/YNmjPhbH5j0c7a2v5PZ4HA7X48
 +QCV6CmtK5xazKTpe8E+9ZN7JkzOnatCUk9xWtk54J4XnT5RLFRabKHNt
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XnIZeKGl
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix page reuse when
 PAGE_SIZE is over 8k
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 bjorn@kernel.org, anthony.l.nguyen@intel.com, magnus.karlsson@intel.com,
 luizcap@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Architectures that have PAGE_SIZE >= 8192 such as arm64 should act the
same as x86 currently, meaning reuse of a page should only take place
when no one else is busy with it.

Do two things independently of underlying PAGE_SIZE:
- store the page count under ice_rx_buf::pgcnt
- then act upon its value vs ice_rx_buf::pagecnt_bias when making the
  decision regarding page reuse

Fixes: 2b245cb29421 ("ice: Implement transmit and NAPI support")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8d25b6981269..50211188c1a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -837,16 +837,15 @@ ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
 	if (!dev_page_is_reusable(page))
 		return false;
 
-#if (PAGE_SIZE < 8192)
 	/* if we are only owner of page we can reuse it */
 	if (unlikely(rx_buf->pgcnt - pagecnt_bias > 1))
 		return false;
-#else
+#if (PAGE_SIZE >= 8192)
 #define ICE_LAST_OFFSET \
 	(SKB_WITH_OVERHEAD(PAGE_SIZE) - ICE_RXBUF_2048)
 	if (rx_buf->page_offset > ICE_LAST_OFFSET)
 		return false;
-#endif /* PAGE_SIZE < 8192) */
+#endif /* PAGE_SIZE >= 8192) */
 
 	/* If we have drained the page fragment pool we need to update
 	 * the pagecnt_bias and page count so that we fully restock the
@@ -949,12 +948,7 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
 	struct ice_rx_buf *rx_buf;
 
 	rx_buf = &rx_ring->rx_buf[ntc];
-	rx_buf->pgcnt =
-#if (PAGE_SIZE < 8192)
-		page_count(rx_buf->page);
-#else
-		0;
-#endif
+	rx_buf->pgcnt = page_count(rx_buf->page);
 	prefetchw(rx_buf->page);
 
 	if (!size)
-- 
2.34.1

