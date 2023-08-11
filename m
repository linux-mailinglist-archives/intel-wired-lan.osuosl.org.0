Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 809F4778EC7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 081EC83FF7;
	Fri, 11 Aug 2023 12:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 081EC83FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755904;
	bh=uu6eoQvq4OiAwIYcguJWaIV0CEzV375t5z4REqV8440=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W8TcPhAQ8m7hHkX5R4lsXPqy9VFe27Vylr4t+bDibAJvF6JuawybEnCNG9P0VBI4X
	 xj2Pt9X4yGiIPTLE+2Vpw4civSoGeQWJAiLHl3ai2BzoQcXYDyM3aL96RoJn11c5FP
	 ZS+XpEUf9hDkY8isQuK3LBCrmpc54EZ2Jsj29TYo6nGPdfrRbM2dlz3l1z1e0OyOs+
	 Cp0wJKTSngKIuhUOPPKWOLObR1ZH6fkLhKp/KzHhYmZ3cRuxI4KYWnoLe0MSoLpRrM
	 b8eVNfuTNS9u1/7NiiA//npI+FIk87u1BKR7kf52fTCZTC7AVDyYxe5ExphXH4RllY
	 FU4pZ3PXAgMXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYVcU5dIEWFt; Fri, 11 Aug 2023 12:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D939D83F32;
	Fri, 11 Aug 2023 12:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D939D83F32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D69F81BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA164404FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA164404FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrsgjL7CA18m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:11:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1BA740189
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1BA740189
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="438002127"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="438002127"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="906421895"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="906421895"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 11 Aug 2023 05:11:11 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 91F6133BC6;
 Fri, 11 Aug 2023 13:11:10 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 08:08:12 -0400
Message-Id: <20230811120814.169952-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
References: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755874; x=1723291874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4GBf2EESOi7onKw3vz0dKPSBTjhZKbd/0pu82xSmftQ=;
 b=ltVIC6QjU7UdZh+OLqnnchSQFe0k2LQhWMx7S6moxpmB/CNnL/jEtWEr
 x7ZZhV117K0wlXeJRuH2Lw1vxc+nlq/4Rwj8Z15CJVgfdabeh2YJ7JZpe
 B3+37/BFrxrIjNtRjVo54CA+kEGg24Vl0fohwjOlne9k8kTLRvbXw++mW
 ubmcDLyemURlJQTsj+U/arOfpg7CWdpMsE+6rTf2JHPMesmRScLDGJLNI
 xRhGN9xbBJx6WvEU4mX4YuSmwG+/Lnm3pGBc+l13kSjomCKka6cTme5HG
 C9RDxMMUE2ms4mAaahCW9qfBxm7e4o81uZK6HxK+/rOKjIYar5lEJBwu/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ltVIC6Qj
Subject: [Intel-wired-lan] [PATCH net-next v2 5/7] ice: make use of
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
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
index 927518fcad51..c005ee1006f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1821,21 +1821,14 @@ int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
 
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
@@ -1877,24 +1870,18 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
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
