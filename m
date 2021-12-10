Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9FA47035D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 16:00:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B87182D49;
	Fri, 10 Dec 2021 15:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l_OGmDBVgUAs; Fri, 10 Dec 2021 15:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CFDD82B97;
	Fri, 10 Dec 2021 15:00:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19E3A1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15B1161454
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8g15Q1Ln2Od for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 14:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7186261267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 14:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639148398; x=1670684398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2PVjwIld2vBted4BmZnosMs2q3tQo3Bzi8yzQF2WFKg=;
 b=Uu0ro2SXSdTX0s5xrcmnUOXbPAIuj/18g8Os+Wgtc0k4ZFVBGJUHDe6Y
 EqKDoIg8YbEGNBBAfaYRFiKYPK/05XAg5zX9fTHqP0ruToKw2bAn0gVPb
 iEIX04sB6wYpxTD1TYlheOgJdH+bIOzg1nfetd0Qq4ujJ0AQgjxA2BVOf
 zCor6Hkx0iPxDdqd0ThaDGD88da88JnQsNadc5YDg0s+bU+KFxT7FRb3W
 /6ASFmWQ1zqLnXUbuNAbpIBss/MU3Auz9Jh18Ckbaa8qCbvtwJX79ZoWO
 Hb1Qa313m+yvr/WRO/mpHHvTn2YBAqECpM8PT/xMXQezpaqyQyu9cd4Gn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238160363"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238160363"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 06:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="680763765"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 06:59:56 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Dec 2021 15:59:40 +0100
Message-Id: <20211210145941.5865-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
References: <20211210145941.5865-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 4/5] ice: xsk: allow empty Rx
 descriptors on XSK ZC data path
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
Cc: elza.mathew@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit ac6f733a7bd5 ("ice: allow empty Rx descriptors") stated that ice
HW can produce empty descriptors that are valid and they should be
processed.

Add this support to xsk ZC path to avoid potential processing problems.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 874fce9fa1c3..80f5a6194a49 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -537,12 +537,18 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		 */
 		dma_rmb();
 
+		xdp = *ice_xdp_buf(rx_ring, rx_ring->next_to_clean);
+
 		size = le16_to_cpu(rx_desc->wb.pkt_len) &
 				   ICE_RX_FLX_DESC_PKT_LEN_M;
-		if (!size)
-			break;
+		if (!size) {
+			xdp->data = NULL;
+			xdp->data_end = NULL;
+			xdp->data_hard_start = NULL;
+			xdp->data_meta = NULL;
+			goto construct_skb;
+		}
 
-		xdp = *ice_xdp_buf(rx_ring, rx_ring->next_to_clean);
 		xsk_buff_set_size(xdp, size);
 		xsk_buff_dma_sync_for_cpu(xdp, rx_ring->xsk_pool);
 
@@ -560,7 +566,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 			ice_bump_ntc(rx_ring);
 			continue;
 		}
-
+construct_skb:
 		/* XDP_PASS path */
 		skb = ice_construct_skb_zc(rx_ring, xdp);
 		if (!skb) {
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
