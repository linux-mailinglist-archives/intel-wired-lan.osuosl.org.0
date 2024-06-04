Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 512918FB384
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:22:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6A54613AF;
	Tue,  4 Jun 2024 13:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YhRXQe8tWKq0; Tue,  4 Jun 2024 13:22:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0ED5613AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507342;
	bh=oNG06nf7n6ILX35RjrrKv1JXTZqgdgHKq8DQEKLxN9Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5aJf4bEWNw1OXj9qJ2PasbE0zScYPK01RsuCq+gla9witEoLsjGolnzN+FoS5TcB2
	 rgEflR6oBzAVB4oOI78N0IWLeWbpdmkTu173zvHXYAA4Z4RMsJs06hOSPQckjqzpgN
	 JruM3RTymXI7Kk838wWGMs1oKNXrCaGu3i4qTyg+AiyHK5aG2+LewakmHh1LDAUfyn
	 6+2F2DunNAq9Zonv5Zg+1N5zfheMyHN/Xezf2LCylWwfOW3Mv1gFEhuwWkmAJPI0mj
	 lEgTwK1tLOced1v8pV/MtieZtZtK6Odd9lI9roPpGS0gksaTbsSSZcaojzdY+DyWfx
	 L0BxX8+w4bL7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0ED5613AE;
	Tue,  4 Jun 2024 13:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA5DD1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A73B740511
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QEby9Mc21oeb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:22:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DA412404DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA412404DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA412404DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:18 +0000 (UTC)
X-CSE-ConnectionGUID: py5rF4bmR0u0DBfqb1tldA==
X-CSE-MsgGUID: vQKLYa2XRTCs+c7wXcJr4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31552880"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31552880"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:22:18 -0700
X-CSE-ConnectionGUID: Sdwk3qzBRT2VfZr8ykQBeg==
X-CSE-MsgGUID: hEoKu8dfRIuEHhTmbZK21Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37350169"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2024 06:22:16 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:21:51 +0200
Message-Id: <20240604132155.3573752-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507338; x=1749043338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OYsK15Mb/mDG2rT2wboMih8QycgdQA7XYEQQTqsfnx0=;
 b=WtUznnRv57BKN6CwjNgl/5tIXCh1y0YwT6XUiyUWOviEbIDMdF2NEyZE
 HNaysdkNiBLWAJ84Q++Yjrc0mMgJTKfpWcHDRJcORC/FXlIqYr6PFg5aq
 5GkmK/fVAvuvcMl7jiDbtS4Qs6gx7MoFtWC0AKNWlcb1hd8M2tuwnsBf5
 OiVLHGIbV6Gh3Eyv70B73ykZOw3mHHLH0Ak6yFokZdAaFgHdP7BaqP6zd
 KF6OMu9e7kUnlNfmmTsxE8TcUGUUJylZj+w6t4yLLSSIJ+PJF50qGzFCm
 k1eFHrBLwIIp8AIJarMjjIx71kVZbbOBDOz1BZchRWnIXibhONqHWuwd1
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WtUznnRv
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 4/8] ice: modify error handling
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
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>,
 magnus.karlsson@intel.com, Shannon Nelson <shannon.nelson@amd.com>
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
index b6f4ddb744d4..8ca7ff1a7e7f 100644
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

