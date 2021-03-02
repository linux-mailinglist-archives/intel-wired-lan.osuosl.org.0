Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A941C32A94E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5880383AB2;
	Tue,  2 Mar 2021 18:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mjiNUqHxWh_E; Tue,  2 Mar 2021 18:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B8BB83A9B;
	Tue,  2 Mar 2021 18:25:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB441BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3677C606DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TYrkyFb3weO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 67D6E60612
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:18 +0000 (UTC)
IronPort-SDR: sVunNwBbPPPCPzIxrV4mg5NZP1flgb9tfpUSbruL3+STzFoxAp5WfvMDcXWmjHX3ZtEMWD7tKv
 h69ncrfkTXvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263181"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263181"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:17 -0800
IronPort-SDR: 19osst0ynboTAEgrHnO7DJf/E7dD/DyFFbVNM+6B06FfCvWVbCEdegjmj8Z3nua2Y7CkjBC22+
 flK7vRTQLLRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915051"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:33 -0800
Message-Id: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 01/13] ice: Change
 ice_vsi_setup_q_map() to not depend on RSS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Brett Creeley <brett.creeley@intel.com>

Currently, ice_vsi_setup_q_map() depends on the VSI's rss_size. However,
the Rx Queue Mapping section of the VSI context has no dependency on RSS.
Instead, limit the maximum number of Rx queues per TC based on the Rx
Queue mapping section of the VSI context, which currently allows for up
to 256 Rx queues per TC.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_lib.c | 50 ++++++++----------------
 2 files changed, 17 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a0233962a672..5304296c1e39 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -92,6 +92,7 @@
 #define ICE_INVAL_Q_INDEX	0xffff
 #define ICE_INVAL_VFID		256
 
+#define ICE_MAX_RXQS_PER_TC		256	/* Used when setting VSI context per TC Rx queues */
 #define ICE_MAX_RESET_WAIT		20
 
 #define ICE_VSIQF_HKEY_ARRAY_SIZE	((VSIQF_HKEY_MAX_INDEX + 1) *	4)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a305dc2c3c10..f67b58a154fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -744,11 +744,10 @@ static void ice_set_dflt_vsi_ctx(struct ice_vsi_ctx *ctxt)
  */
 static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 {
-	u16 offset = 0, qmap = 0, tx_count = 0;
+	u16 offset = 0, qmap = 0, tx_count = 0, pow = 0;
+	u16 num_txq_per_tc, num_rxq_per_tc;
 	u16 qcount_tx = vsi->alloc_txq;
 	u16 qcount_rx = vsi->alloc_rxq;
-	u16 tx_numq_tc, rx_numq_tc;
-	u16 pow = 0, max_rss = 0;
 	bool ena_tc0 = false;
 	u8 netdev_tc = 0;
 	int i;
@@ -766,12 +765,15 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 		vsi->tc_cfg.ena_tc |= 1;
 	}
 
-	rx_numq_tc = qcount_rx / vsi->tc_cfg.numtc;
-	if (!rx_numq_tc)
-		rx_numq_tc = 1;
-	tx_numq_tc = qcount_tx / vsi->tc_cfg.numtc;
-	if (!tx_numq_tc)
-		tx_numq_tc = 1;
+	num_rxq_per_tc = min_t(u16, qcount_rx / vsi->tc_cfg.numtc, ICE_MAX_RXQS_PER_TC);
+	if (!num_rxq_per_tc)
+		num_rxq_per_tc = 1;
+	num_txq_per_tc = qcount_tx / vsi->tc_cfg.numtc;
+	if (!num_txq_per_tc)
+		num_txq_per_tc = 1;
+
+	/* find the (rounded up) power-of-2 of qcount */
+	pow = (u16)order_base_2(num_rxq_per_tc);
 
 	/* TC mapping is a function of the number of Rx queues assigned to the
 	 * VSI for each traffic class and the offset of these queues.
@@ -784,26 +786,6 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	 *
 	 * Setup number and offset of Rx queues for all TCs for the VSI
 	 */
-
-	qcount_rx = rx_numq_tc;
-
-	/* qcount will change if RSS is enabled */
-	if (test_bit(ICE_FLAG_RSS_ENA, vsi->back->flags)) {
-		if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_VF) {
-			if (vsi->type == ICE_VSI_PF)
-				max_rss = ICE_MAX_LG_RSS_QS;
-			else
-				max_rss = ICE_MAX_RSS_QS_PER_VF;
-			qcount_rx = min_t(u16, rx_numq_tc, max_rss);
-			if (!vsi->req_rxq)
-				qcount_rx = min_t(u16, qcount_rx,
-						  vsi->rss_size);
-		}
-	}
-
-	/* find the (rounded up) power-of-2 of qcount */
-	pow = (u16)order_base_2(qcount_rx);
-
 	ice_for_each_traffic_class(i) {
 		if (!(vsi->tc_cfg.ena_tc & BIT(i))) {
 			/* TC is not enabled */
@@ -817,16 +799,16 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 
 		/* TC is enabled */
 		vsi->tc_cfg.tc_info[i].qoffset = offset;
-		vsi->tc_cfg.tc_info[i].qcount_rx = qcount_rx;
-		vsi->tc_cfg.tc_info[i].qcount_tx = tx_numq_tc;
+		vsi->tc_cfg.tc_info[i].qcount_rx = num_rxq_per_tc;
+		vsi->tc_cfg.tc_info[i].qcount_tx = num_txq_per_tc;
 		vsi->tc_cfg.tc_info[i].netdev_tc = netdev_tc++;
 
 		qmap = ((offset << ICE_AQ_VSI_TC_Q_OFFSET_S) &
 			ICE_AQ_VSI_TC_Q_OFFSET_M) |
 			((pow << ICE_AQ_VSI_TC_Q_NUM_S) &
 			 ICE_AQ_VSI_TC_Q_NUM_M);
-		offset += qcount_rx;
-		tx_count += tx_numq_tc;
+		offset += num_rxq_per_tc;
+		tx_count += num_txq_per_tc;
 		ctxt->info.tc_mapping[i] = cpu_to_le16(qmap);
 	}
 
@@ -839,7 +821,7 @@ static void ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	if (offset)
 		vsi->num_rxq = offset;
 	else
-		vsi->num_rxq = qcount_rx;
+		vsi->num_rxq = num_rxq_per_tc;
 
 	vsi->num_txq = tx_count;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
