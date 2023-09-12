Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D4979D0A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 14:04:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54D5241B95;
	Tue, 12 Sep 2023 12:04:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54D5241B95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694520276;
	bh=0jQGcDHBNV7w++Ph5a+VupG9thAA1eALBJGhMXfK5ls=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D+m/0WpGNopND2+S7BxFNK/WRrA/GRpd9L/Cay1IaebBC37OYwFed1ADQkhcdDqK0
	 +UNzprgZA/y375NtSf0cRll6OpUOUUMZ+l1HrNhfwb8N0v+orpyJlKP8muFXQwyiUa
	 j3jqHZ/kwn7hZzw9gRurJp4vprX84RBm+T5PRILNf0MBw692lJ7XtxqFcXVODrY6gT
	 IatpGSO+chvYI5HFk02ehtxsS82HCU7+4vbIr3V3ng0U7ggyOMEyW9UXBnl5ZfHIVP
	 BFGKeCNxyN/JAWXPMs2tX2VZxYv4g010wyJyQh30r558DrO022JAILMhzfi6Sk9JHM
	 v6/1GqC5BDQ3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CjFy55Bh9cl4; Tue, 12 Sep 2023 12:04:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D02B418FA;
	Tue, 12 Sep 2023 12:04:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D02B418FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 368561BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:04:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0088C415A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0088C415A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRgCht2BBBjU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 12:04:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22BB4415A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22BB4415A9
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378265483"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378265483"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:03:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720389781"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="720389781"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga006.jf.intel.com with ESMTP; 12 Sep 2023 05:02:58 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B2E76333D9;
 Tue, 12 Sep 2023 13:02:57 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com
Date: Tue, 12 Sep 2023 07:59:35 -0400
Message-Id: <20230912115937.1645707-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
References: <20230912115937.1645707-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520249; x=1726056249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vP/fCTIR9KvIL0oWNZP+5MEI2P81yeMIZzvNhvrA4C8=;
 b=R22/aZ9SDlNyLWFKxyq8AGAfVeKF72ppijN467CJBdYqcmCUcJMdZTbs
 chqdKprf7tn3G5HC9ZazUPj4hIAxqtemmY+XTxjB/c+nGWqZ94h/gkeyS
 Tmj/iVEaApXjGP6MEp8WcGO716r5I34f/ReDsPYoevleczqfVz7yOwU7X
 G2YPk1oXNG8WzNaOlCNd803YqPn36UDVjLFSZqmHCV8LwUhd86U9PxYAw
 xk33zLZ0jB++LQO/mv9Ydp4GAUVc5VQyDgP6we4/PM8vxcH8nGz4Y6NC/
 gOhbOyOSZj8/5cAn2UxRlEPsW9/oVykmIekaBk6NKFW5jB67b61khylzk
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R22/aZ9S
Subject: [Intel-wired-lan] [PATCH net-next v5 5/7] ice: make use of
 DEFINE_FLEX() for struct ice_aqc_add_tx_qgrp
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
Cc: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, David Laight <David.Laight@ACULAB.COM>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use DEFINE_FLEX() macro for 1-elem flex array use case
of struct ice_aqc_add_tx_qgrp.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
add/remove: 0/2 grow/shrink: 2/2 up/down: 220/-255 (-35)
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 23 +++++------------------
 drivers/net/ethernet/intel/ice/ice_xsk.c | 22 ++++++++--------------
 2 files changed, 13 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 201570cd2e0b..b47d1055802e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1832,21 +1832,14 @@ int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
 
 int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u16 q_idx)
 {
-	struct ice_aqc_add_tx_qgrp *qg_buf;
-	int err;
+	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
 
 	if (q_idx >= vsi->alloc_txq || !tx_rings || !tx_rings[q_idx])
 		return -EINVAL;
 
-	qg_buf = kzalloc(struct_size(qg_buf, txqs, 1), GFP_KERNEL);
-	if (!qg_buf)
-		return -ENOMEM;
-
 	qg_buf->num_txqs = 1;
 
-	err = ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
-	kfree(qg_buf);
-	return err;
+	return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
 }
 
 /**
@@ -1888,24 +1881,18 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
 static int
 ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
 {
-	struct ice_aqc_add_tx_qgrp *qg_buf;
-	u16 q_idx = 0;
+	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
 	int err = 0;
-
-	qg_buf = kzalloc(struct_size(qg_buf, txqs, 1), GFP_KERNEL);
-	if (!qg_buf)
-		return -ENOMEM;
+	u16 q_idx;
 
 	qg_buf->num_txqs = 1;
 
 	for (q_idx = 0; q_idx < count; q_idx++) {
 		err = ice_vsi_cfg_txq(vsi, rings[q_idx], qg_buf);
 		if (err)
-			goto err_cfg_txqs;
+			break;
 	}
 
-err_cfg_txqs:
-	kfree(qg_buf);
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 2a3f0834e139..99954508184f 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -217,61 +217,55 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
  */
 static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 {
-	struct ice_aqc_add_tx_qgrp *qg_buf;
+	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
+	u16 size = __struct_size(qg_buf);
 	struct ice_q_vector *q_vector;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	u16 size;
 	int err;
 
 	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
 		return -EINVAL;
 
-	size = struct_size(qg_buf, txqs, 1);
-	qg_buf = kzalloc(size, GFP_KERNEL);
-	if (!qg_buf)
-		return -ENOMEM;
-
 	qg_buf->num_txqs = 1;
 
 	tx_ring = vsi->tx_rings[q_idx];
 	rx_ring = vsi->rx_rings[q_idx];
 	q_vector = rx_ring->q_vector;
 
 	err = ice_vsi_cfg_txq(vsi, tx_ring, qg_buf);
 	if (err)
-		goto free_buf;
+		return err;
 
 	if (ice_is_xdp_ena_vsi(vsi)) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
 		memset(qg_buf, 0, size);
 		qg_buf->num_txqs = 1;
 		err = ice_vsi_cfg_txq(vsi, xdp_ring, qg_buf);
 		if (err)
-			goto free_buf;
+			return err;
 		ice_set_ring_xdp(xdp_ring);
 		ice_tx_xsk_pool(vsi, q_idx);
 	}
 
 	err = ice_vsi_cfg_rxq(rx_ring);
 	if (err)
-		goto free_buf;
+		return err;
 
 	ice_qvec_cfg_msix(vsi, q_vector);
 
 	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
 	if (err)
-		goto free_buf;
+		return err;
 
 	clear_bit(ICE_CFG_BUSY, vsi->state);
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
-free_buf:
-	kfree(qg_buf);
-	return err;
+
+	return 0;
 }
 
 /**
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
