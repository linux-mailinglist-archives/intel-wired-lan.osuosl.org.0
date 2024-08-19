Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C819567F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 12:14:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C35A0404E7;
	Mon, 19 Aug 2024 10:14:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXjoyGy75tuc; Mon, 19 Aug 2024 10:14:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C65AD404E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724062487;
	bh=2ICq2+BGJMZzFbVlws/aLJtbUiXhRnvCiUPtPnCK/8Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oqBJh4FmtznbP2IsThiJJeCJWGVX2nPZK0Jqy6Vuz+xukO8k6vve9q39+/sHymCma
	 3Uu9OrNnolHBvde9pU/zeXv3pd9yIbRiMpdXpzDfQ08lAn2RQQNWKSsT2H8K1bTCH9
	 rOw5ghSzzYitPMShCNAbpEjGWxKMEK/ThliZYfPsdmQZvObudt3wMYhzZdNcVOGq1y
	 wkbnn1TMlbeGLUIClOfnbo7yWP7Vbr7xDibY6cOzNYo/Kx0t6TrLvyKflsn2ndNjyV
	 DRfFSFAMEPcB7tiu2yP4H+jCa/2aOOVZnzeI9rUZnik2ut+zNVddAU64Tj5oTFOQHO
	 0LXDFDgbZfFGw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C65AD404E3;
	Mon, 19 Aug 2024 10:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2AE1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B68E80581
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57vydXRMqaok for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 10:14:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B35F1805B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B35F1805B4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B35F1805B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:41 +0000 (UTC)
X-CSE-ConnectionGUID: 9ilIKZmOTg64sr7JBtuK8g==
X-CSE-MsgGUID: neui/iVxQS6y3+78RhjOZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="13090161"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="13090161"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 03:14:39 -0700
X-CSE-ConnectionGUID: 1/eP7oPuTEauyQ97t7f7Ag==
X-CSE-MsgGUID: oe+66mvnT0G0EJYmCMnSdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="91097096"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 19 Aug 2024 03:14:35 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B56AA135E8;
 Mon, 19 Aug 2024 11:14:33 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 19 Aug 2024 12:05:40 +0200
Message-ID: <20240819100606.15383-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240819100606.15383-1-larysa.zaremba@intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724062481; x=1755598481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IHzG2uvRKNyxIguwTTh7pY0USOJZVz7XMiKbL1op64A=;
 b=JSoFsMin6eVK0HlPdylJ40gHhJ0B51xpi7z7BgnsM2t1JSjLubyzHntO
 WwhkbL/jHArA2/gcXT0HURmbb/fcHz6s+oByeE6b3mcuERWjV1gJM/H08
 stHZm13VldEu3xSyTbVdgmKfhCiM6279Rr4q1d4WbgLa3ogswcphlOsh6
 /cmwfPipZTbXnpDdJcc8w/NNQqOJeq00GsIflui6hiM0ZcOYakXwdD2Qr
 juNtt6A5CaYi/r3BUV7FNx/L0FZ/LA8ijRSjayt48KhJTi9IQvFdk9DyI
 zyfz6xeXyjTci6rIPT9w16tYgPBcf3H9Xv9i98zv8x4UsaUjQbM20REj/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JSoFsMin
Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/6] ice: check for XDP rings
 instead of bpf program when unconfiguring
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If VSI rebuild is pending, .ndo_bpf() can attach/detach the XDP program on
VSI without applying new ring configuration. When unconfiguring the VSI, we
can encounter the state in which there is an XDP program but no XDP rings
to destroy or there will be XDP rings that need to be destroyed, but no XDP
program to indicate their presence.

When unconfiguring, rely on the presence of XDP rings rather then XDP
program, as they better represent the current state that has to be
destroyed.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a8721ecdf2cd..b72338974a60 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2419,7 +2419,7 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 		dev_err(ice_pf_to_dev(pf), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
 			vsi->vsi_num, err);
 
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		/* return value check can be skipped here, it always returns
 		 * 0 if reset is in progress
 		 */
@@ -2521,7 +2521,7 @@ static void ice_vsi_release_msix(struct ice_vsi *vsi)
 		for (q = 0; q < q_vector->num_ring_tx; q++) {
 			ice_write_itr(&q_vector->tx, 0);
 			wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), 0);
-			if (ice_is_xdp_ena_vsi(vsi)) {
+			if (vsi->xdp_rings) {
 				u32 xdp_txq = txq + vsi->num_xdp_txq;
 
 				wr32(hw, QINT_TQCTL(vsi->txq_map[xdp_txq]), 0);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e92f43850671..a718763d2370 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7228,7 +7228,7 @@ int ice_down(struct ice_vsi *vsi)
 	if (tx_err)
 		netdev_err(vsi->netdev, "Failed stop Tx rings, VSI %d error %d\n",
 			   vsi->vsi_num, tx_err);
-	if (!tx_err && ice_is_xdp_ena_vsi(vsi)) {
+	if (!tx_err && vsi->xdp_rings) {
 		tx_err = ice_vsi_stop_xdp_tx_rings(vsi);
 		if (tx_err)
 			netdev_err(vsi->netdev, "Failed stop XDP rings, VSI %d error %d\n",
@@ -7245,7 +7245,7 @@ int ice_down(struct ice_vsi *vsi)
 	ice_for_each_txq(vsi, i)
 		ice_clean_tx_ring(vsi->tx_rings[i]);
 
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		ice_for_each_xdp_txq(vsi, i)
 			ice_clean_tx_ring(vsi->xdp_rings[i]);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a659951fa987..8693509efbe7 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -39,7 +39,7 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 	       sizeof(vsi_stat->rx_ring_stats[q_idx]->rx_stats));
 	memset(&vsi_stat->tx_ring_stats[q_idx]->stats, 0,
 	       sizeof(vsi_stat->tx_ring_stats[q_idx]->stats));
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		memset(&vsi->xdp_rings[q_idx]->ring_stats->stats, 0,
 		       sizeof(vsi->xdp_rings[q_idx]->ring_stats->stats));
 }
@@ -52,7 +52,7 @@ static void ice_qp_reset_stats(struct ice_vsi *vsi, u16 q_idx)
 static void ice_qp_clean_rings(struct ice_vsi *vsi, u16 q_idx)
 {
 	ice_clean_tx_ring(vsi->tx_rings[q_idx]);
-	if (ice_is_xdp_ena_vsi(vsi))
+	if (vsi->xdp_rings)
 		ice_clean_tx_ring(vsi->xdp_rings[q_idx]);
 	ice_clean_rx_ring(vsi->rx_rings[q_idx]);
 }
@@ -194,7 +194,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
 	if (!fail)
 		fail = err;
-	if (ice_is_xdp_ena_vsi(vsi)) {
+	if (vsi->xdp_rings) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
 		memset(&txq_meta, 0, sizeof(txq_meta));
-- 
2.43.0

