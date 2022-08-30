Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC3A5A63EC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:51:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BA13408F0;
	Tue, 30 Aug 2022 12:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BA13408F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661863911;
	bh=STkGdw1F+88frSGoQ2KtZzw6affGEolUB9i/WQMizL8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UtkSFNYgdBkJcG4VQinnJbZ1pltBhtIgOWIOY4JFD9Mk5doAVt8pyv2AzrrxzvH0o
	 K2dnuf3jDo2SHMnwtfVihckjO9QwYULjfRlAr9s87MjKvVzL7aRMrjhFfpsdgIWtSo
	 42zd6FfOdvQdviSv2COSU9Hs2BMAn0A98A69ixl+oyssj69CJt3AufpOPF5poBen4l
	 8KkreXPQ8Py1hYd1hjW1ovYfrIXwC+zSa/I2qkY7cTBx1MrpQGSpGHmfnKc4AaBIOV
	 jaqBG7Y4eYEPib9VfG+2gynBUciZgrqFMug7Dgz6gDVb7yUXQdOIBGrMUB87ve6a9c
	 DdIVClhI+imOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XAndVg-83NBZ; Tue, 30 Aug 2022 12:51:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED891408E8;
	Tue, 30 Aug 2022 12:51:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED891408E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90F481BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C5CB81302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C5CB81302
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9H-9yaNPbSL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 12:51:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF37E812E9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF37E812E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:51:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="282136299"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="282136299"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="680024104"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2022 05:51:36 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Aug 2022 14:51:22 +0200
Message-Id: <20220830125122.9665-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220830125122.9665-1-maciej.fijalkowski@intel.com>
References: <20220830125122.9665-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661863898; x=1693399898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3oOsAJbtvFZwqYYFDrI/ZRzxiKYeStTLQyTM5B7ilko=;
 b=Yhit6nPIgJ6jbj1Gm+ycnCUCjHhDxMHptZywxINp9HxtrCaPYKrc68yL
 ZTG28nONTleKjblx1OF97qTKe86jWz7EDwziiNXWynxHZswXfji7KfZN0
 eW7TAFDB7qxHVLmgIDTx+JahdT9VnwagyrvpY5duZuv4wI78vo8J8P6so
 it20ZDtmR/ZwwmVW52UNFbZJ+F1Gyvv99cfDfburRyMQhiS41dkBPaUjj
 i63rWQDz1hfyTtGpPCEPv4QAE+iQLDJ7VXt6iJKsTSX9sGQZ0r+SErRxG
 k+tiGbAF1P9eIAaN8w09hcQUiLvPv0MkZVY+gH7rtHeENbKBUHdRBnQMr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yhit6nPI
Subject: [Intel-wired-lan] [PATCH v2 intel-net 2/2] ice: xsk: drop power of
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
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 46efe72d1342..d51e45ea4499 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -329,13 +329,6 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 	bool if_running, pool_present = !!pool;
 	int ret = 0, pool_failure = 0;
 
-	if (!is_power_of_2(vsi->rx_rings[qid]->count) ||
-	    !is_power_of_2(vsi->tx_rings[qid]->count)) {
-		netdev_err(vsi->netdev, "Please align ring sizes to power of 2\n");
-		pool_failure = -EINVAL;
-		goto failure;
-	}
-
 	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
@@ -358,7 +351,6 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 			netdev_err(vsi->netdev, "ice_qp_ena error = %d\n", ret);
 	}
 
-failure:
 	if (pool_failure) {
 		netdev_err(vsi->netdev, "Could not %sable buffer pool, error = %d\n",
 			   pool_present ? "en" : "dis", pool_failure);
@@ -465,11 +457,10 @@ static bool __ice_alloc_rx_bufs_zc(struct ice_rx_ring *rx_ring, u16 count)
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
@@ -968,14 +959,17 @@ bool ice_xsk_any_rx_ring_ena(struct ice_vsi *vsi)
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
+
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
