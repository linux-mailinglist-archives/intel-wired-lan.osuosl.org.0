Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2707556A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D31C86CF9;
	Thu, 25 Jul 2019 17:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZVkG-OFU48b; Thu, 25 Jul 2019 17:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34C6286566;
	Thu, 25 Jul 2019 17:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F8D31BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D44E2044E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUh+3sLt0iwP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:24:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 15D7022658
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973707"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:32 -0700
Message-Id: <20190725085541.55104-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 06/15] ice: Set WB_ON_ITR when we
 don't re-enable interrupts
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

Currently when busy polling is enabled we aren't setting/enabling
WB_ON_ITR in the driver. This doesn't break the driver, but it does
cause issues. If we don't enable WB_ON_ITR mode we will still get
write-backs from hardware during polling when a cache line has been
filled, but if a cache line is not filled we will not get the
write-back because WB_ON_ITR is not set. Fix this by enabling
WB_ON_ITR in the driver when interrupts are disabled.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v3: Moved defines to group with similar registers
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  3 ++
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 54 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 13 +++++
 3 files changed, 70 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 87652d722a30..6f78ff5534af 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -127,8 +127,11 @@
 #define GLINT_DYN_CTL_CLEARPBA_M		BIT(1)
 #define GLINT_DYN_CTL_SWINT_TRIG_M		BIT(2)
 #define GLINT_DYN_CTL_ITR_INDX_S		3
+#define GLINT_DYN_CTL_ITR_INDX_M		ICE_M(0x3, 3)
 #define GLINT_DYN_CTL_INTERVAL_S		5
+#define GLINT_DYN_CTL_INTERVAL_M		ICE_M(0xFFF, 5)
 #define GLINT_DYN_CTL_SW_ITR_INDX_M		ICE_M(0x3, 25)
+#define GLINT_DYN_CTL_WB_ON_ITR_M		BIT(30)
 #define GLINT_DYN_CTL_INTENA_MSK_M		BIT(31)
 #define GLINT_ITR(_i, _INT)			(0x00154000 + ((_i) * 8192 + (_INT) * 4))
 #define GLINT_RATE(_INT)			(0x0015A000 + ((_INT) * 4))
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5d2689956ade..9a54406922f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1356,6 +1356,23 @@ ice_update_ena_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
 	struct ice_ring_container *rx = &q_vector->rx;
 	u32 itr_val;
 
+	/* when exiting WB_ON_ITR lets set a low ITR value and trigger
+	 * interrupts to expire right away in case we have more work ready to go
+	 * already
+	 */
+	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE) {
+		itr_val = ice_buildreg_itr(rx->itr_idx, ICE_WB_ON_ITR_USECS);
+		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx), itr_val);
+		/* set target back to last user set value */
+		rx->target_itr = rx->itr_setting;
+		/* set current to what we just wrote and dynamic if needed */
+		rx->current_itr = ICE_WB_ON_ITR_USECS |
+			(rx->itr_setting & ICE_ITR_DYNAMIC);
+		/* allow normal interrupt flow to start */
+		q_vector->itr_countdown = 0;
+		return;
+	}
+
 	/* This will do nothing if dynamic updates are not enabled */
 	ice_update_itr(q_vector, tx);
 	ice_update_itr(q_vector, rx);
@@ -1400,6 +1417,41 @@ ice_update_ena_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
 		     itr_val);
 }
 
+/**
+ * ice_set_wb_on_itr - set WB_ON_ITR for this q_vector
+ * @vsi: pointer to the VSI structure
+ * @q_vector: q_vector to set WB_ON_ITR on
+ *
+ * We need to tell hardware to write-back completed descriptors even when
+ * interrupts are disabled. Descriptors will be written back on cache line
+ * boundaries without WB_ON_ITR enabled, but if we don't enable WB_ON_ITR
+ * descriptors may not be written back if they don't fill a cache line until the
+ * next interrupt.
+ *
+ * This sets the write-back frequency to 2 microseconds as that is the minimum
+ * value that's not 0 due to ITR granularity. Also, set the INTENA_MSK bit to
+ * make sure hardware knows we aren't meddling with the INTENA_M bit.
+ */
+static void
+ice_set_wb_on_itr(struct ice_vsi *vsi, struct ice_q_vector *q_vector)
+{
+	/* already in WB_ON_ITR mode no need to change it */
+	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE)
+		return;
+
+	if (q_vector->num_ring_rx)
+		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
+		     ICE_GLINT_DYN_CTL_WB_ON_ITR(ICE_WB_ON_ITR_USECS,
+						 ICE_RX_ITR));
+
+	if (q_vector->num_ring_tx)
+		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
+		     ICE_GLINT_DYN_CTL_WB_ON_ITR(ICE_WB_ON_ITR_USECS,
+						 ICE_TX_ITR));
+
+	q_vector->itr_countdown = ICE_IN_WB_ON_ITR_MODE;
+}
+
 /**
  * ice_napi_poll - NAPI polling Rx/Tx cleanup routine
  * @napi: napi struct with our devices info in it
@@ -1460,6 +1512,8 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	 */
 	if (likely(napi_complete_done(napi, work_done)))
 		ice_update_ena_itr(vsi, q_vector);
+	else
+		ice_set_wb_on_itr(vsi, q_vector);
 
 	return min_t(int, work_done, budget - 1);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index ec76aba347b9..94a9280193e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -144,6 +144,19 @@ enum ice_rx_dtype {
 #define ICE_DFLT_INTRL	0
 #define ICE_MAX_INTRL	236
 
+#define ICE_WB_ON_ITR_USECS	2
+#define ICE_IN_WB_ON_ITR_MODE	255
+/* Sets WB_ON_ITR and assumes INTENA bit is already cleared, which allows
+ * setting the MSK_M bit to tell hardware to ignore the INTENA_M bit. Also,
+ * set the write-back latency to the usecs passed in.
+ */
+#define ICE_GLINT_DYN_CTL_WB_ON_ITR(usecs, itr_idx)	\
+	((((usecs) << (GLINT_DYN_CTL_INTERVAL_S - ICE_ITR_GRAN_S)) & \
+	  GLINT_DYN_CTL_INTERVAL_M) | \
+	 (((itr_idx) << GLINT_DYN_CTL_ITR_INDX_S) & \
+	  GLINT_DYN_CTL_ITR_INDX_M) | GLINT_DYN_CTL_INTENA_MSK_M | \
+	 GLINT_DYN_CTL_WB_ON_ITR_M)
+
 /* Legacy or Advanced Mode Queue */
 #define ICE_TX_ADVANCED	0
 #define ICE_TX_LEGACY	1
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
