Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 328825A94D1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Sep 2022 12:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0597D60C05;
	Thu,  1 Sep 2022 10:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0597D60C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662028860;
	bh=HxeuwRkDPUlfzjNh2nxhCH7BxzUh4SYqfTurogdSKng=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MqGkENLIUmQh8CLtB8YpvKGVtEXOWBCAdfDXR+6A2UOB+nHYU36bwCicbHzrKooxe
	 9KntlosKBBlYaMDCVwiS8xEbslJkj0QNpxVSl/7LY1maoicB7nlzmCmZ6ZRxGo71OP
	 kgs21AX1+XfqZhZ+7zdJnH9oBnzbYLOZb9wRj5XqcfJ3rEscxnvMVAB1V7+WB4GUGj
	 8afk7WDOtsBLohEKQfymywCNiOM7iQtgIKLFBPNx3MSChMkTH3DT8TPWGpqc04Pg6f
	 E07GbyNlJlUIwKuqZMtFzYUobvQ/uWcwxFk+3cU4qo/4VjZ+7kaWZA/t8SJaDONsBx
	 lRmncdRcJ4/Bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AqYf7QhwmrDz; Thu,  1 Sep 2022 10:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAD3660C01;
	Thu,  1 Sep 2022 10:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAD3660C01
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC1851BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 10:40:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B795A410DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 10:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B795A410DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdNsQtw_etLk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Sep 2022 10:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 152514112C
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 152514112C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Sep 2022 10:40:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="276082784"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="276082784"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 03:40:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="857801166"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga006.fm.intel.com with ESMTP; 01 Sep 2022 03:40:46 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Sep 2022 12:40:40 +0200
Message-Id: <20220901104040.15723-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220901104040.15723-1-maciej.fijalkowski@intel.com>
References: <20220901104040.15723-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662028848; x=1693564848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndvJzWq/037gMnmvsm1Ger1dXOrF0UyKuoWIXx89R4c=;
 b=MJudgpvf2msJCJIGeb42VK1g/ixH7q8fAX92YyVMMHl5PDPsa0tJ+vuI
 IQkBkoIy4PEoAQdftjb7vIYoJ59EF2acidYdPi/Y1mG9ukvGhIL8LEAGf
 mrf5Lnw5EX+8yQzh+KAXWcwoulM39122dOHXmOk4DRiG2c8K27XkkHLKL
 Mkag2TbxFlZBaWLkoOoyWQC9XStRpHT3WrQGWoR9w7ji9y59sAO9rdu08
 O7Q19MrGcZ2Uy7e8DFIoNqo67Ruaq3lePVCFaaUCb6iEMxVPC8oJvgH54
 C9BfekA+AtqWYkn3i/4z+SvXywAVDtyWnU578WjcaiUYqd1Oa8Kvh1LMk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MJudgpvf
Subject: [Intel-wired-lan] [PATCH v3 intel-net 2/2] ice: xsk: drop power of
 2 ring size restriction for AF_XDP
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
Cc: alasdair.mcwilliam@outlook.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

We had multiple customers in the past months that reported commit
296f13ff3854 ("ice: xsk: Force rings to be sized to power of 2")
makes them unable to use ring size of 8160 in conjunction with AF_XDP.
Remove this restriction.

Fixes: 296f13ff3854 ("ice: xsk: Force rings to be sized to power of 2")
CC: Alasdair McWilliam <alasdair.mcwilliam@outlook.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 26e767eb1c6e..6af33e3618cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -335,13 +335,6 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 		goto failure;
 	}
 
-	if (!is_power_of_2(vsi->rx_rings[qid]->count) ||
-	    !is_power_of_2(vsi->tx_rings[qid]->count)) {
-		netdev_err(vsi->netdev, "Please align ring sizes to power of 2\n");
-		pool_failure = -EINVAL;
-		goto failure;
-	}
-
 	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
@@ -471,11 +464,10 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 bool ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
 {
 	u16 rx_thresh = ICE_RING_QUARTER(rx_ring);
-	u16 batched, leftover, i, tail_bumps;
+	u16 leftover, i, tail_bumps;
 
-	batched = ALIGN_DOWN(count, rx_thresh);
-	tail_bumps = batched / rx_thresh;
-	leftover = count & (rx_thresh - 1);
+	tail_bumps = count / rx_thresh;
+	leftover = count - (tail_bumps * rx_thresh);
 
 	for (i = 0; i < tail_bumps; i++)
 		if (!__ice_alloc_rx_bufs_zc(rx_ring, rx_thresh))
@@ -974,14 +966,16 @@ bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi)
  */
 void ice_xsk_clean_rx_ring(struct ice_rx_ring *rx_ring)
 {
-	u16 count_mask = rx_ring->count - 1;
 	u16 ntc = rx_ring->next_to_clean;
 	u16 ntu = rx_ring->next_to_use;
 
-	for ( ; ntc != ntu; ntc = (ntc + 1) & count_mask) {
+	while (ntc != ntu) {
 		struct xdp_buff *xdp = *ice_xdp_buf(rx_ring, ntc);
 
 		xsk_buff_free(xdp);
+		ntc++;
+		if (ntc >= rx_ring->count)
+			ntc = 0;
 	}
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
