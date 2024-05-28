Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 590E28D1C5A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:15:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E880820C3;
	Tue, 28 May 2024 13:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3hNwEhDDb3D9; Tue, 28 May 2024 13:15:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F2F680EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902150;
	bh=qWhuAN/U+I3nStqlP9Lh0gzH64ZyAgBaSVVblpKiJEw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JMem1XIVjQHnd7OeI5oDJrg3B+TTL91wTuBJvPjuhJNKnyrTf8hP6aIZXkUOCLx+R
	 4Fv9SMHqVczyHnGR1PWJVd+O7GKiohQzdq7/fD9SEHyV5PDKVjt3bzCRGr4ee5Pxgj
	 WF/TunLhU9rcXD+9st/qA0D11X/ncb2LcYXqNhOeKqpda2O0VNMWDtAx8Yjjtko5me
	 2J37ZHk6Qh6pEMRXQP3GpEXcSgek3tYaQmh6bL02/i76s+cucq/oqb81Q6Uj/6VB0T
	 xNFRIEBBzljx/Gv8VztB6brJFk5GBw/8RFUbHBni6Mw24DlhMc8LaCC26B4npnf5KX
	 KS75sfRpV9GtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F2F680EC6;
	Tue, 28 May 2024 13:15:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8583F1D2818
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70BBF82013
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ssf0hWQT-B6t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:15:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD50882012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD50882012
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD50882012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:45 +0000 (UTC)
X-CSE-ConnectionGUID: oChtFW0rQ3uLOLzqNA9how==
X-CSE-MsgGUID: m5p6iOp0ThCnbYI2w8S9cA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193560"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193560"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:46 -0700
X-CSE-ConnectionGUID: wOCgip5WQdO3GzRgR4NGQg==
X-CSE-MsgGUID: ZPK+e8ahQneQurjOC5v3Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891167"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:44 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:26 +0200
Message-Id: <20240528131429.3012910-9-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902146; x=1748438146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v0cZw/C8zWmdW/96UfED93gGMqtozyU5z56YS5yvp8E=;
 b=PcAGr1tHWzI+dDpAeTRLejGjLNKvS0pgLvKpIB8Q/ZTeL6iYIw4mzk8S
 G2dUEYuAnK2A1wrIQfp1ghj045vCwnGA9kjYbVOkb7vn5/uc8vOAfrx5j
 0rpRSWsvwsnJCWLlFcfneYu4ezokCF6JNY69C3TPFPNvAy/3NXUEMZFrM
 KCxUyQordjT9eWlHfp2KfUYvRnpKfwIsQXZqIbwRSLaqHFFCLk9oRJwJC
 Nl8HaP14gfD0ATgw69egJhRwFMSHlzvaGY/v+uuV3Xj9fMQBV+EdMrJt9
 4SMVhJlLrmdwskbjrsdRHblS6GnH4kIU4PpitHzALllEaHMDOUuURy/Qf
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PcAGr1tH
Subject: [Intel-wired-lan] [PATCH iwl-net 08/11] ice: xsk: fix txq interrupt
 mapping
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
 drivers/net/ethernet/intel/ice/ice_xsk.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index e554cf424fb3..3135fc0aaf73 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -113,23 +113,26 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
  * @q_vector: queue vector
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
@@ -241,7 +244,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		fail = err;
 
 	q_vector = vsi->rx_rings[q_idx]->q_vector;
-	ice_qvec_cfg_msix(vsi, q_vector);
+	ice_qvec_cfg_msix(vsi, q_vector, q_idx);
 
 	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
 	if (!fail)
-- 
2.34.1

