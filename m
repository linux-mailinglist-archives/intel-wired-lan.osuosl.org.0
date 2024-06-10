Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D03DA9025EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 17:45:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68CF56087F;
	Mon, 10 Jun 2024 15:45:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5e4H7_qKDJMs; Mon, 10 Jun 2024 15:45:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9753260881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718034313;
	bh=7Baz8DLhUc9XAfmN4gA7O9etp0E8ojSXqz4G74p/Tl8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YzF+S5OAUp91LIXlXWDpQuotgNgqN+qXNTeOTiykqzDUiTnRFfhNpPXp9xHZTxKqB
	 VNTz58Yrnbs6zioLX97dY/CVLddgl1ekC3QrG0QV2l0cvNv/32kspLSfuhjZYmMF+U
	 kkBkz2bwVuZpMWkm5EBldu7miE3MJCT+ytgsleQCzmowOEtjwziNLd1RXGdukpBq/S
	 hzV+3n9WemcJGekacWsL71gnrMQdGRyPTPu9JKVpeD9Ax2G/q/iq3QZHg6FmxoMzR5
	 FkoylYjGcBb2kPBFWFNIeH414al7U63II5GqQJQsPZdeRzPgc2v5cfX0RXtr8B9p9O
	 P/By0H89F1pWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9753260881;
	Mon, 10 Jun 2024 15:45:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C48181BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEEAF404B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLe4NjlXxH5k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 15:45:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8835F40493
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8835F40493
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8835F40493
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 15:45:10 +0000 (UTC)
X-CSE-ConnectionGUID: F/1mwb4lQrGrhMEdolYALA==
X-CSE-MsgGUID: ct7jYLk8QC2bxmWR0dVGDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="26119864"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="26119864"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 08:45:10 -0700
X-CSE-ConnectionGUID: 6R3brtywTb2VXCSyRA/AmA==
X-CSE-MsgGUID: JvFWDt5rTDmrEJjMGy02Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43679776"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 10 Jun 2024 08:45:05 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BB4B1312D7;
 Mon, 10 Jun 2024 16:44:50 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2024 17:37:14 +0200
Message-ID: <20240610153716.31493-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240610153716.31493-1-larysa.zaremba@intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718034310; x=1749570310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1CJQhgdeQheVVIX/aqzTWo34167G3W6siXPTBXQpy9A=;
 b=VKAB8jIh8ycwOMgVFjKzHRRV7WPkLYAXdeFIlGsCd0TTi+Sb3UbKQbF3
 tGFku7G+kVwTVjrP+jI74P3Z4ajiSzyLiHGuWEnDg507JsFF3bpAo144h
 gy0hSStBeq30jEKfzgQYet0XCrRC55sn9uwLPshrc09plBpcPRFzCr6jQ
 izXXsRmTEcvsI2gSEgLTerwwuPLmaODge17rzvUEH2s1D7CCdnQpK17so
 cTQU10zvatgwklqKo2RlLuuU4rxmc65hdZy8kPr6v/wQLlq2JXU3oAAPh
 5TEy224sTvfIFXO7TWTF5a9O6GwO1phk/SiyEC4yn1NaGXbTB86RIeNJB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VKAB8jIh
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: fix locking in
 ice_xsk_pool_setup()
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Igor Bagnucki <igor.bagnucki@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With ICE_CFG_BUSY PF state flag locking used in ice_xdp(), there is no need
to lock with VSI state inside ice_xsk_pool_setup(). For robust
synchronization the state between reset preparation and PF VSI rebuild has
to be handled, in the same way as in ice_xdp_setup_prog().

Remove locking logic from ice_qp_dis() and ice_qp_ena() and skip those
functions, if rebuild is pending.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 12 ++----------
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 701a61d791dd..76590cfcaf68 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -941,6 +941,7 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
 			  enum ice_xdp_cfg cfg_type);
 int ice_destroy_xdp_rings(struct ice_vsi *vsi, enum ice_xdp_cfg cfg_type);
 void ice_map_xdp_rings(struct ice_vsi *vsi);
+bool ice_rebuild_pending(struct ice_vsi *vsi);
 int
 ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	     u32 flags);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index dc60d816a345..cd8be3c3b956 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2994,7 +2994,7 @@ static int ice_max_xdp_frame_size(struct ice_vsi *vsi)
  * so it happens strictly before or after .ndo_bpf().
  * In case it has happened before, we do not have anything attached to rings
  */
-static bool ice_rebuild_pending(struct ice_vsi *vsi)
+bool ice_rebuild_pending(struct ice_vsi *vsi)
 {
 	return ice_is_reset_in_progress(vsi->back->state) &&
 	       !vsi->rx_rings[0]->desc;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 4e2020ab0825..6c95bebd7777 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -163,7 +163,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	struct ice_tx_ring *xdp_ring;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	int timeout = 50;
 	int fail = 0;
 	int err;
 
@@ -175,13 +174,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	xdp_ring = vsi->xdp_rings[q_idx];
 	q_vector = rx_ring->q_vector;
 
-	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
-		timeout--;
-		if (!timeout)
-			return -EBUSY;
-		usleep_range(1000, 2000);
-	}
-
 	synchronize_net();
 	netif_trans_update(vsi->netdev);
 	netif_carrier_off(vsi->netdev);
@@ -251,7 +243,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	synchronize_net();
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 	netif_carrier_on(vsi->netdev);
-	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return fail;
 }
@@ -379,7 +370,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 		return -EINVAL;
 	}
 
-	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
+	if_running = !ice_rebuild_pending(vsi) &&
+		     netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
 
 	if (if_running) {
 		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
-- 
2.43.0

