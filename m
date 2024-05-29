Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5387E8D357A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EDAD40B6E;
	Wed, 29 May 2024 11:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Man36xeymmA0; Wed, 29 May 2024 11:24:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E46840B48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981841;
	bh=QBcxoemKSkvLmGMMpJPBG5yZkGUSz67thqF6B9WPeoE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VHX/GVM4BGl3FXwdeSU3iqDqvUXbAS9xHQlzSLBgRq+qo+YP+I7YoNp0sAyAUAXwl
	 9y4rCglHivpHubO3tdKZm8DyAIb9WPogWm5FBwwfXYdo0fMfUpbGqPFnCfVy3srAsa
	 d3h6GDrErVuU2AH+XZzqlo0RJLTYoqUP304genNMpjIoPqJLUirDdaWprQaw/QM2XF
	 DvnNDbqUBPSvgPGGEXAX5cM3YRDe0KAM9fbFSjPRCCVhTXi4FHDfIRq7t2fmYqOrCi
	 Al8V6RlBGllxX09MkLSyrCsHPZL0qVDqBdExfBgKCpGhnmFK0xDDQGgOVpag742xb0
	 MTNg0wz0JfsUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E46840B48;
	Wed, 29 May 2024 11:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A38F1D3498
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 070F9607E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WVlxp-_eDdda for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 11:23:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 54014605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54014605CD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54014605CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:58 +0000 (UTC)
X-CSE-ConnectionGUID: bI9jpPARQnm7W96k83maEQ==
X-CSE-MsgGUID: OG+84ahsSB69zGIVVfmXfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17169279"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17169279"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:23:58 -0700
X-CSE-ConnectionGUID: AMy57ZThSt61j1VcW+Xi3w==
X-CSE-MsgGUID: qKJnVYjeQ62irQKp9uqrFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="66277195"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 29 May 2024 04:23:56 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 13:23:37 +0200
Message-Id: <20240529112337.3639084-9-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716981838; x=1748517838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JxgorqeOgR50t13m+RvvtSW764Pt/UK0PXKKYocvqN8=;
 b=DC8+m8CJs+IUgnDpXrFPhcSrqI0G7DCRHzpHEMRTWJ73EBgqojAHtWGc
 x+gXIJKXnh7D7MYNfuhQOjUtLrGn3d2AJBiClFT1Qhnx+mPyqBolPyTsV
 g+a0wjGEs7bNnhAYJHfNrCCs7btzfNvaX1IIBSUZThD3J/4Ksa+BZGxEY
 pOdht/C0AnEjkfJfrLY3JP5AshfsLF69qVwyRNDj15fa9NhBpZTXAXVqT
 Ui8TZjvUjp6VWFABeQVwdn9MC1cO7sdll2qPWGqr8WmCXXJarDbC2o0hi
 suYliDEYxFV1v1K04kzr2ddOb08IaGaHDpd1yr374sJOiRPyR2ZHCZAc2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DC8+m8CJ
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 8/8] ice: xsk: fix txq
 interrupt mapping
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
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_cfg_txq_interrupt() internally handles XDP Tx ring. Do not use
ice_for_each_tx_ring() in ice_qvec_cfg_msix() as this causing us to
treat XDP ring that belongs to queue vector as Tx ring and therefore
misconfiguring the interrupts.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 693f0e3a37ce..85aa841a16bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -111,25 +111,29 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
  * ice_qvec_cfg_msix - Enable IRQ for given queue vector
  * @vsi: the VSI that contains queue vector
  * @q_vector: queue vector
+ * @qid: queue index
  */
 static void
-ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
+ice_qvec_cfg_msix(struct ice_vsi *vsi, struct ice_q_vector *q_vector, u16 qid)
 {
 	u16 reg_idx = q_vector->reg_idx;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
-	struct ice_tx_ring *tx_ring;
-	struct ice_rx_ring *rx_ring;
+	int q, _qid = qid;
 
 	ice_cfg_itr(hw, q_vector);
 
-	ice_for_each_tx_ring(tx_ring, q_vector->tx)
-		ice_cfg_txq_interrupt(vsi, tx_ring->reg_idx, reg_idx,
-				      q_vector->tx.itr_idx);
+	for (q = 0; q < q_vector->num_ring_tx; q++) {
+		ice_cfg_txq_interrupt(vsi, _qid, reg_idx, q_vector->tx.itr_idx);
+		_qid++;
+	}
 
-	ice_for_each_rx_ring(rx_ring, q_vector->rx)
-		ice_cfg_rxq_interrupt(vsi, rx_ring->reg_idx, reg_idx,
-				      q_vector->rx.itr_idx);
+	_qid = qid;
+
+	for (q = 0; q < q_vector->num_ring_rx; q++) {
+		ice_cfg_rxq_interrupt(vsi, _qid, reg_idx, q_vector->rx.itr_idx);
+		_qid++;
+	}
 
 	ice_flush(hw);
 }
@@ -241,7 +245,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		fail = err;
 
 	q_vector = vsi->rx_rings[q_idx]->q_vector;
-	ice_qvec_cfg_msix(vsi, q_vector);
+	ice_qvec_cfg_msix(vsi, q_vector, q_idx);
 
 	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
 	if (!fail)
-- 
2.34.1

