Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377C15A6394
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 14:38:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38022409E0;
	Tue, 30 Aug 2022 12:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38022409E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661863114;
	bh=STkGdw1F+88frSGoQ2KtZzw6affGEolUB9i/WQMizL8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uM6ekvc/lHK5spRZJhuHDZO6IA8beMErYnr8jf4zjX2+7NfpqOFCJw7eFvjwbQpUI
	 1L6yNVhkUMj8WviOwGnzts7plbreSk4ewTWh10a0mqf3oVj/cI+HGLcGw1f9zi80fO
	 jt8kwhbeVkpHUTmGhuZdaTLTF298SINVVwZBnYjmrI32XlOLt4xa0CFDfhZ4SXeoVh
	 BQMwn4HvDLPBJNgFxGkQWEpffhzKJTgpGFXT+nukA/ocVEF1TlZik9NNBxq2VbTkfe
	 vwxRb2P0mMJHBb808jOPfObOw23EnpKQh20lL0XfygW553l6qRJIbqt6QKQh5nlfxj
	 rBZS1jjejx2SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dXjoncNFKE9Z; Tue, 30 Aug 2022 12:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F9BF40201;
	Tue, 30 Aug 2022 12:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F9BF40201
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34E1B1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 101F760FAD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:38:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 101F760FAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id brdP0MFP3RM8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Aug 2022 12:38:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A47560FAC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A47560FAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Aug 2022 12:38:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295943128"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="295943128"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 05:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="588585216"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 30 Aug 2022 05:38:19 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 30 Aug 2022 14:38:03 +0200
Message-Id: <20220830123803.9361-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220830123803.9361-1-maciej.fijalkowski@intel.com>
References: <20220830123803.9361-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661863101; x=1693399101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3oOsAJbtvFZwqYYFDrI/ZRzxiKYeStTLQyTM5B7ilko=;
 b=aURN8M7hkNHpfCrhszscZ3+ojnRP8Q13CZmxbrhHQszM1TWmISJr9pX1
 5I0q4UVLbI6qNds+vPYOKykzJ7WEPNSVtHlJmQcML9HUyUMUA+22FeYpP
 obWsdsq9Sgn2RVkpO7tRd5s7q3X6qEyAcUzGa45t9OkvO4w7+Ud1lTsRF
 beLvXVDDSieCiAa0dyj3m35oBhfo4pvJGtbWHXPKc20zw6dnIEdFgPm4g
 nA44qbX5gWMEQ0c7aHGOxq/cmHYH9c3Fx/B5zv+xLZJ6GqSMhCOldVKa6
 6Mwqw9W6xQdhTolVJmnzGHG05sXwh6mF56o6yEkhDlGqtpgLxvLqXCi10
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aURN8M7h
Subject: [Intel-wired-lan] [PATCH intel-net 2/2] ice: xsk: drop power of 2
 ring size restriction for AF_XDP
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com
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
