Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D2E8FB38A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:22:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7790C613BE;
	Tue,  4 Jun 2024 13:22:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpzqp3nTmugM; Tue,  4 Jun 2024 13:22:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF883613AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507353;
	bh=4dupxONMLQa5AzToivG1CwxyMGozwnSLpHPdDIV+Xos=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ai36tkcS0f05g943W294W0+hcDHqJooZze8xFVWhtbaM/XQN1lkUUzkJN/AfP5I6Y
	 tKw2Cw/+CLi7sGcDExjGazDyI8Jd67zqWkPrr4JcUXw2WTZPs0JakhWDlUxd3sV9ge
	 zHDiDrCHjtGMRAvWLLF6XtChy+PY88WnFx2cgDSbGyAc9spY12Xvgw/Ng6pC3+pqox
	 6bwW2JSPeHp3rtO8uiWjJejV95Vw8FyRSWii3DJL/ozxZhA3M1zH8JXAcSnnduT+gw
	 DUTYqiLbvEzRHTSacliHHprlwk4MO1uRbPdEuQKn1wtxP9uw2Lsfug8qpPCEm7Yw79
	 BxPY2Vmszc0Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF883613AE;
	Tue,  4 Jun 2024 13:22:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4D6C1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEA74404DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1l9f0iDA_4Cz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:22:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F28EF404B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F28EF404B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F28EF404B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:28 +0000 (UTC)
X-CSE-ConnectionGUID: kbbKVpTFRaOJyvFQj3G8tA==
X-CSE-MsgGUID: Z4Nx1KJJSs+2dDhhuyJhKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31552926"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31552926"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:22:28 -0700
X-CSE-ConnectionGUID: gnGctB7PQHe2Su/ZnRfGNA==
X-CSE-MsgGUID: q8FKOsWKRU6dI2WSB3DGlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37350259"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2024 06:22:26 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:21:55 +0200
Message-Id: <20240604132155.3573752-9-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507349; x=1749043349;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QLZomVILEix7eGz96mFc0JI+SIUZ0tCt6kRPAstm8ZY=;
 b=fZgr/yFfyuMKjgcv4uapVMauvJX8fULIkxVpNZNj0EftkuvAcBsIBS+S
 G7BBGIU7JY0b8gM2fyMmK30Ab5ObPnz6shQ6pRYLFeOGXSrUzwx23RzB0
 AngtTKmX95ukGoqJPZORPc+++A3fxPmN5cx9mniJfNneTe+Rd0EHm4g0n
 I4NXnUQyOFtP/QQNfh5yQF5HwzunybCwwWroKZt8tvvmqRzK/nxxQ6t4D
 yeRCmdxdcLMzAqTO7jQVB0YjgTRsiTJJe00vp32QHmmnJ97fESYbeWhmX
 EgyL4o6Q2dbJsAxYeWc6YcuKvBW8aBmUl6lDqlZhVVaoWqZ09XO4pil95
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fZgr/yFf
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 8/8] ice: xsk: fix txq
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
 jacob.e.keller@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>,
 magnus.karlsson@intel.com, Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_cfg_txq_interrupt() internally handles XDP Tx ring. Do not use
ice_for_each_tx_ring() in ice_qvec_cfg_msix() as this causing us to
treat XDP ring that belongs to queue vector as Tx ring and therefore
misconfiguring the interrupts.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index b7c291fce53c..c064634b932f 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -110,25 +110,29 @@ ice_qvec_dis_irq(struct ice_vsi *vsi, struct ice_rx_ring *rx_ring,
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
@@ -240,7 +244,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		fail = err;
 
 	q_vector = vsi->rx_rings[q_idx]->q_vector;
-	ice_qvec_cfg_msix(vsi, q_vector);
+	ice_qvec_cfg_msix(vsi, q_vector, q_idx);
 
 	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
 	if (!fail)
-- 
2.34.1

