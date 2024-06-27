Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B6791A7B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A8D160E39;
	Thu, 27 Jun 2024 13:18:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5u8vtK3KwoU1; Thu, 27 Jun 2024 13:18:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B092760E3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494335;
	bh=6KicM1yrFZ6lCtenb+usS89dBpR4okjvYOBz4sBW2gk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FKc+70V2Rnr2eiS4XZ6lRW7tjMbL9yKyAMrg2cgK7+LK4RL1Iv3awnCfTPMJGXFXx
	 2/iN6oQd/iCgT7irprY7tluSn9n0g/dvbwapnqmJucVcLUExj2Ci0b8BKXQJQsUF0W
	 qlODlX/5RUBKT9Mg6bYzqR7e7fsit0JLEYHNl0Fo5KMADLuND9bZ2dqQALR+Ec+Ghc
	 9pNiJQOcNNM8jLniTkj0k8eLhXN7Tjw2eXlHIalZT2yFrecInlFlQbdHCWltLnhCH4
	 vfHRa0JfAWwxigdXaXNxWNRiPhd2VC0k9qrDmZHszLcUK2qo0obB7tzrPlkj4dmqw8
	 1i5RIi3kEVmZA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B092760E3A;
	Thu, 27 Jun 2024 13:18:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 496A81BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35FB8402AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kJGMZPmmlICT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2FF65402AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2FF65402AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FF65402AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:53 +0000 (UTC)
X-CSE-ConnectionGUID: G/EGgn2TQfqSXGMmghJMrg==
X-CSE-MsgGUID: 0GqkZXheTHKYAZ5qChQ6zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452353"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452353"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:18:54 -0700
X-CSE-ConnectionGUID: TH+8p3+kTe26tRuGFaVbwg==
X-CSE-MsgGUID: YPu3QyILTXSuqBlxJoFKPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315392"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:51 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:53 +0200
Message-Id: <20240627131757.144991-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494334; x=1751030334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmQwXCFZo7BvRkVcopxBFnH88drjhJzKTgexVz+oJzo=;
 b=TpRSb6edozVt8rTyLlVDWGFEvgCovyD6pIHY4NzIbY2o2DtupdNxSikY
 EbSCjN1ps7q53mWAc16cKPSSgGp61LhKEFfTSwYh0tW2M2Lm/FpTh4QXn
 qV6M5p2Ob04Xyq2KL7eid3tJfnzOAVy3ktNJh8v8gdh7JIWqbOmAG1lRm
 mi30FPBg0NWwQO4V6JGMpcWgEXm8bcp4fXo7rpRywYGe2FZ7vQMbvFbmu
 F7J6j8lVDoCV3A0FLue0j5BY4toxkkj+FhPoxJzAI0/Z02OrVzNKp8f1v
 kMpZtFHztH86/p+v9qlOHIzXfAG3XeV19g15v0XDNO7tkEPEkrUK+TqP5
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TpRSb6ed
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 4/8] ice: modify error handling
 when setting XSK pool in ndo_bpf
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, aleksander.lobakin@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>, magnus.karlsson@intel.com,
 Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Don't bail out right when spotting an error within ice_qp_{dis,ena}()
but rather track error and go through whole flow of disabling and
enabling queue pair.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 30 +++++++++++++-----------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index ba50af9a5929..902096b000f5 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -162,6 +162,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
 	int timeout = 50;
+	int fail = 0;
 	int err;
 
 	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
@@ -186,8 +187,8 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 
 	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
-	if (err)
-		return err;
+	if (!fail)
+		fail = err;
 	if (ice_is_xdp_ena_vsi(vsi)) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
@@ -195,15 +196,15 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		ice_fill_txq_meta(vsi, xdp_ring, &txq_meta);
 		err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, xdp_ring,
 					   &txq_meta);
-		if (err)
-			return err;
+		if (!fail)
+			fail = err;
 	}
 
 	ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, false);
 	ice_qp_clean_rings(vsi, q_idx);
 	ice_qp_reset_stats(vsi, q_idx);
 
-	return 0;
+	return fail;
 }
 
 /**
@@ -216,32 +217,33 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 {
 	struct ice_q_vector *q_vector;
+	int fail = 0;
 	int err;
 
 	err = ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx);
-	if (err)
-		return err;
+	if (!fail)
+		fail = err;
 
 	if (ice_is_xdp_ena_vsi(vsi)) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
 		err = ice_vsi_cfg_single_txq(vsi, vsi->xdp_rings, q_idx);
-		if (err)
-			return err;
+		if (!fail)
+			fail = err;
 		ice_set_ring_xdp(xdp_ring);
 		ice_tx_xsk_pool(vsi, q_idx);
 	}
 
 	err = ice_vsi_cfg_single_rxq(vsi, q_idx);
-	if (err)
-		return err;
+	if (!fail)
+		fail = err;
 
 	q_vector = vsi->rx_rings[q_idx]->q_vector;
 	ice_qvec_cfg_msix(vsi, q_vector);
 
 	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
-	if (err)
-		return err;
+	if (!fail)
+		fail = err;
 
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
@@ -249,7 +251,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 	clear_bit(ICE_CFG_BUSY, vsi->state);
 
-	return 0;
+	return fail;
 }
 
 /**
-- 
2.34.1

