Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F5C1D5D7D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D478E22731;
	Sat, 16 May 2020 00:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8NEv6pHgVE07; Sat, 16 May 2020 00:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E6E322622;
	Sat, 16 May 2020 00:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA3CD1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4CD0204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDvev-46MAHm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id AFDAB22622
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:41 +0000 (UTC)
IronPort-SDR: DGBqBesOluIOmF1s0/+fILPJVsVmK11clNfnayERYKWGfeeTB959dqYNpB3nsRto4AqtxxTPvc
 1Vb31pW+G6Lg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:40 -0700
IronPort-SDR: rBOmYkSxS3wPd5tRqGuPkZ+Cx5soUzQs/uXP8gveWQHeaysa/Ebby0md88UENnCO0JR48iZDXw
 wtKvQDE56suw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922696"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:54:59 -0700
Message-Id: <20200516005506.5113-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 2/9] ice: Always clear QRXFLXP_CNTXT
 before writing new value
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

Always clear the previous value in QRXFLXP_CNTXT before writing a new
value. This will make it so re-used queues will not accidentally take the
previously configured settings.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 33 ++++++++---------------
 drivers/net/ethernet/intel/ice/ice_lib.c  | 26 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h  |  3 +++
 3 files changed, 40 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 798b173e81e0..04be6f2d1861 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -2,6 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include "ice_base.h"
+#include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
 /**
@@ -285,7 +286,6 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	u32 rxdid = ICE_RXDID_FLEX_NIC;
 	struct ice_rlan_ctx rlan_ctx;
 	struct ice_hw *hw;
-	u32 regval;
 	u16 pf_q;
 	int err;
 
@@ -346,27 +346,16 @@ static int ice_setup_rx_ctx(struct ice_ring *ring)
 	/* Rx queue threshold in units of 64 */
 	rlan_ctx.lrxqthresh = 1;
 
-	 /* Enable Flexible Descriptors in the queue context which
-	  * allows this driver to select a specific receive descriptor format
-	  */
-	regval = rd32(hw, QRXFLXP_CNTXT(pf_q));
-	if (vsi->type != ICE_VSI_VF) {
-		regval |= (rxdid << QRXFLXP_CNTXT_RXDID_IDX_S) &
-			QRXFLXP_CNTXT_RXDID_IDX_M;
-
-		/* increasing context priority to pick up profile ID;
-		 * default is 0x01; setting to 0x03 to ensure profile
-		 * is programming if prev context is of same priority
-		 */
-		regval |= (0x03 << QRXFLXP_CNTXT_RXDID_PRIO_S) &
-			QRXFLXP_CNTXT_RXDID_PRIO_M;
-
-	} else {
-		regval &= ~(QRXFLXP_CNTXT_RXDID_IDX_M |
-			    QRXFLXP_CNTXT_RXDID_PRIO_M |
-			    QRXFLXP_CNTXT_TS_M);
-	}
-	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
+	/* Enable Flexible Descriptors in the queue context which
+	 * allows this driver to select a specific receive descriptor format
+	 * increasing context priority to pick up profile ID; default is 0x01;
+	 * setting to 0x03 to ensure profile is programming if prev context is
+	 * of same priority
+	 */
+	if (vsi->type != ICE_VSI_VF)
+		ice_write_qrxflxp_cntxt(hw, pf_q, rxdid, 0x3);
+	else
+		ice_write_qrxflxp_cntxt(hw, pf_q, ICE_RXDID_LEGACY_1, 0x3);
 
 	/* Absolute queue number out of 2K needs to be passed */
 	err = ice_write_rxq_ctx(hw, &rlan_ctx, pf_q);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7ab7408b3a05..7cd4afcade13 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1630,6 +1630,32 @@ void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
 	}
 }
 
+/**
+ * ice_write_qrxflxp_cntxt - write/configure QRXFLXP_CNTXT register
+ * @hw: HW pointer
+ * @pf_q: index of the Rx queue in the PF's queue space
+ * @rxdid: flexible descriptor RXDID
+ * @prio: priority for the RXDID for this queue
+ */
+void
+ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio)
+{
+	int regval = rd32(hw, QRXFLXP_CNTXT(pf_q));
+
+	/* clear any previous values */
+	regval &= ~(QRXFLXP_CNTXT_RXDID_IDX_M |
+		    QRXFLXP_CNTXT_RXDID_PRIO_M |
+		    QRXFLXP_CNTXT_TS_M);
+
+	regval |= (rxdid << QRXFLXP_CNTXT_RXDID_IDX_S) &
+		QRXFLXP_CNTXT_RXDID_IDX_M;
+
+	regval |= (prio << QRXFLXP_CNTXT_RXDID_PRIO_S) &
+		QRXFLXP_CNTXT_RXDID_PRIO_M;
+
+	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);
+}
+
 /**
  * ice_vsi_cfg_rxqs - Configure the VSI for Rx
  * @vsi: the VSI being configured
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 0d11a3dbed78..9223d3e88869 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -76,6 +76,9 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi);
 
 bool ice_is_reset_in_progress(unsigned long *state);
 
+void
+ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio);
+
 void ice_vsi_put_qs(struct ice_vsi *vsi);
 
 void ice_vsi_dis_irq(struct ice_vsi *vsi);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
