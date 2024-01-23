Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AEC838E0E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 12:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AB958164A;
	Tue, 23 Jan 2024 11:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AB958164A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706011152;
	bh=1Rbvz15+6s08OcsJYoqYjFcgxVoY6USZbQz2zyHtF0Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h/2WcP4x6YGFOqBIV1nnTZB5EJFT7BDM/hJK49IUwzxLVZ3PgJbEdAjEhiCIDXsa3
	 J0VbHc54hKhntn2S7y0J4pgozKH6Muq0e9K9RGF2XZf2vg2pzhW+18fruEATIpNmCV
	 cbQXZkwg1QvzOB3UJDg6PtB2W2nnd5XmU7IGV8zh5fivjNCfWZ8zkT0+Ae2zgWeH9M
	 HEVozALhvL+AnuSpv5q4T62n26wAMSljdt6KgVgFgD0s81WD4/FsmuHDuuTT0L0yql
	 fFwEfUEEE8fNDkUiPIOxXnPNNoZwW/OsV2tmHsojyF35+hMzBWOFLsbky2Ruqwb21o
	 owaD36NDnhfww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-kvkNIg6fSk; Tue, 23 Jan 2024 11:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF7B58174A;
	Tue, 23 Jan 2024 11:59:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF7B58174A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD3361BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90BE8400C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90BE8400C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZrtl55za5G8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 11:58:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4149E402F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4149E402F5
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="22968566"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="22968566"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 03:58:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="27726690"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 23 Jan 2024 03:58:54 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 12:58:46 +0100
Message-Id: <20240123115846.559559-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
References: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706011136; x=1737547136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MurxKFEPkHYh9fVdfB/MP5kbEPXTnjtOLwwtKe4TXss=;
 b=FRFQhycYI0xsCdFfoeiU8pXBn7bujTN2I/O5SeUVn9zTjydT4XeFw14R
 38QBkszI8OcH2YyhDMbfr9s6F1+LPp//CvHeToBijym3fiIk3XFE8060I
 xBtgZGYAirIv/fqBdWyIU3rp56dlkSjG7dzhhN+XYqkt+dQwPZN5fNsup
 InJ2/ijkdyytJLmT0r9vfxKCqLCf3dMsbeUcbU/c7nM4Va6IcfPr8+AG+
 72NMAYX8RdxcN9Etm88vjlJMVYSTfVY7O58veXswj0VA356kHmO+zKOMu
 /07J3ysIFxkG3QJS9EuFu47qEmlke58CGD2IHlhzoO7fvrvCtiK2jw0DU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FRFQhycY
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: make ice_vsi_cfg_txq()
 static
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, XSK control path in ice driver calls directly
ice_vsi_cfg_txq() whereas we have ice_vsi_cfg_single_txq() for that
purpose. Use the latter from XSK side and make ice_vsi_cfg_txq() static.

ice_vsi_cfg_txq() resides in ice_base.c and is rather big, so to reduce
the code churn let us move the callers of it from ice_lib.c to
ice_base.c.

This change puts ice_qp_ena() on nice diet due to the checks and
operations that ice_vsi_cfg_single_{r,t}xq() do internally.

add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-182 (-182)
Function                                     old     new   delta
ice_xsk_pool_setup                          2165    1983    -182
Total: Before=472597, After=472415, chg -0.04%

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 76 ++++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_base.h |  7 ++-
 drivers/net/ethernet/intel/ice/ice_lib.c  | 73 ----------------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  6 --
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 20 +-----
 5 files changed, 82 insertions(+), 100 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 2d8898d5e317..073da2e7085c 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -883,7 +883,7 @@ void ice_vsi_free_q_vectors(struct ice_vsi *vsi)
  * @ring: Tx ring to be configured
  * @qg_buf: queue group buffer
  */
-int
+static int
 ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 		struct ice_aqc_add_tx_qgrp *qg_buf)
 {
@@ -954,6 +954,80 @@ ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
 	return 0;
 }
 
+int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings,
+			   u16 q_idx)
+{
+	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
+
+	if (q_idx >= vsi->alloc_txq || !tx_rings || !tx_rings[q_idx])
+		return -EINVAL;
+
+	qg_buf->num_txqs = 1;
+
+	return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
+}
+
+/**
+ * ice_vsi_cfg_txqs - Configure the VSI for Tx
+ * @vsi: the VSI being configured
+ * @rings: Tx ring array to be configured
+ * @count: number of Tx ring array elements
+ *
+ * Return 0 on success and a negative value on error
+ * Configure the Tx VSI for operation.
+ */
+static int
+ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
+{
+	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
+	int err = 0;
+	u16 q_idx;
+
+	qg_buf->num_txqs = 1;
+
+	for (q_idx = 0; q_idx < count; q_idx++) {
+		err = ice_vsi_cfg_txq(vsi, rings[q_idx], qg_buf);
+		if (err)
+			break;
+	}
+
+	return err;
+}
+
+/**
+ * ice_vsi_cfg_lan_txqs - Configure the VSI for Tx
+ * @vsi: the VSI being configured
+ *
+ * Return 0 on success and a negative value on error
+ * Configure the Tx VSI for operation.
+ */
+int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
+{
+	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, vsi->num_txq);
+}
+
+/**
+ * ice_vsi_cfg_xdp_txqs - Configure Tx queues dedicated for XDP in given VSI
+ * @vsi: the VSI being configured
+ *
+ * Return 0 on success and a negative value on error
+ * Configure the Tx queues dedicated for XDP in given VSI for operation.
+ */
+int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
+{
+	int ret;
+	int i;
+
+	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
+	if (ret)
+		return ret;
+
+	ice_for_each_rxq(vsi, i)
+		ice_tx_xsk_pool(vsi, i);
+
+	return 0;
+}
+
 /**
  * ice_cfg_itr - configure the initial interrupt throttle values
  * @hw: pointer to the HW structure
diff --git a/drivers/net/ethernet/intel/ice/ice_base.h b/drivers/net/ethernet/intel/ice/ice_base.h
index 4c1f8d33b976..789b1b2319f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.h
+++ b/drivers/net/ethernet/intel/ice/ice_base.h
@@ -15,9 +15,10 @@ int ice_vsi_wait_one_rx_ring(struct ice_vsi *vsi, bool ena, u16 rxq_idx);
 int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi);
 void ice_vsi_map_rings_to_vectors(struct ice_vsi *vsi);
 void ice_vsi_free_q_vectors(struct ice_vsi *vsi);
-int
-ice_vsi_cfg_txq(struct ice_vsi *vsi, struct ice_tx_ring *ring,
-		struct ice_aqc_add_tx_qgrp *qg_buf);
+int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings,
+			   u16 q_idx);
+int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi);
+int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
 void ice_cfg_itr(struct ice_hw *hw, struct ice_q_vector *q_vector);
 void
 ice_cfg_txq_interrupt(struct ice_vsi *vsi, u16 txq, u16 msix_idx, u16 itr_idx);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 844356beb58c..a1336b2a9f00 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1787,79 +1787,6 @@ ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio,
 	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
 }
 
-int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u16 q_idx)
-{
-	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
-
-	if (q_idx >= vsi->alloc_txq || !tx_rings || !tx_rings[q_idx])
-		return -EINVAL;
-
-	qg_buf->num_txqs = 1;
-
-	return ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
-}
-
-/**
- * ice_vsi_cfg_txqs - Configure the VSI for Tx
- * @vsi: the VSI being configured
- * @rings: Tx ring array to be configured
- * @count: number of Tx ring array elements
- *
- * Return 0 on success and a negative value on error
- * Configure the Tx VSI for operation.
- */
-static int
-ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
-{
-	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
-	int err = 0;
-	u16 q_idx;
-
-	qg_buf->num_txqs = 1;
-
-	for (q_idx = 0; q_idx < count; q_idx++) {
-		err = ice_vsi_cfg_txq(vsi, rings[q_idx], qg_buf);
-		if (err)
-			break;
-	}
-
-	return err;
-}
-
-/**
- * ice_vsi_cfg_lan_txqs - Configure the VSI for Tx
- * @vsi: the VSI being configured
- *
- * Return 0 on success and a negative value on error
- * Configure the Tx VSI for operation.
- */
-int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
-{
-	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, vsi->num_txq);
-}
-
-/**
- * ice_vsi_cfg_xdp_txqs - Configure Tx queues dedicated for XDP in given VSI
- * @vsi: the VSI being configured
- *
- * Return 0 on success and a negative value on error
- * Configure the Tx queues dedicated for XDP in given VSI for operation.
- */
-int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
-{
-	int ret;
-	int i;
-
-	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
-	if (ret)
-		return ret;
-
-	ice_for_each_rxq(vsi, i)
-		ice_tx_xsk_pool(vsi, i);
-
-	return 0;
-}
-
 /**
  * ice_intrl_usec_to_reg - convert interrupt rate limit to register value
  * @intrl: interrupt rate limit in usecs
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 6ffe4b0603bd..0c77d581416a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -54,10 +54,6 @@ bool ice_pf_state_is_nominal(struct ice_pf *pf);
 
 void ice_update_eth_stats(struct ice_vsi *vsi);
 
-int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u16 q_idx);
-
-int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi);
-
 void ice_vsi_cfg_msix(struct ice_vsi *vsi);
 
 int ice_vsi_start_all_rx_rings(struct ice_vsi *vsi);
@@ -68,8 +64,6 @@ int
 ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 			  u16 rel_vmvf_num);
 
-int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
-
 int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 4eae83d94fb4..446f5b1d2897 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -217,32 +217,17 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
  */
 static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 {
-	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
-	u16 size = __struct_size(qg_buf);
 	struct ice_q_vector *q_vector;
-	struct ice_tx_ring *tx_ring;
-	struct ice_rx_ring *rx_ring;
 	int err;
 
-	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
-		return -EINVAL;
-
-	qg_buf->num_txqs = 1;
-
-	tx_ring = vsi->tx_rings[q_idx];
-	rx_ring = vsi->rx_rings[q_idx];
-	q_vector = rx_ring->q_vector;
-
-	err = ice_vsi_cfg_txq(vsi, tx_ring, qg_buf);
+	err = ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx);
 	if (err)
 		return err;
 
 	if (ice_is_xdp_ena_vsi(vsi)) {
 		struct ice_tx_ring *xdp_ring = vsi->xdp_rings[q_idx];
 
-		memset(qg_buf, 0, size);
-		qg_buf->num_txqs = 1;
-		err = ice_vsi_cfg_txq(vsi, xdp_ring, qg_buf);
+		err = ice_vsi_cfg_single_txq(vsi, vsi->xdp_rings, q_idx);
 		if (err)
 			return err;
 		ice_set_ring_xdp(xdp_ring);
@@ -253,6 +238,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	if (err)
 		return err;
 
+	q_vector = vsi->rx_rings[q_idx]->q_vector;
 	ice_qvec_cfg_msix(vsi, q_vector);
 
 	err = ice_vsi_ctrl_one_rx_ring(vsi, true, q_idx, true);
-- 
2.34.1

