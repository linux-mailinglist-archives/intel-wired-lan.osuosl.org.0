Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B39132BBB3E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Nov 2020 01:46:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6B41E872F1;
	Sat, 21 Nov 2020 00:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 02r6hvnxJOZt; Sat, 21 Nov 2020 00:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7C6F872D0;
	Sat, 21 Nov 2020 00:46:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E17D11BF475
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB75F2E0E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zfFKYUpSUXDo for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Nov 2020 00:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A7B82E134
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Nov 2020 00:46:35 +0000 (UTC)
IronPort-SDR: urSTs/Qi5aBl2KfRCIAw+Vg3JornG2sQOAZ9SvV0qeoFtmMaltfh+mBCvSHy/pR+TF+BP3+2Gx
 0drb+Zw1QOcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="235707870"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="235707870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 16:46:34 -0800
IronPort-SDR: eloDb9LetBtnvsdf/duLmx4X3EoOsjMKGo8BIj/TX5/owuqWyM64Fje5xh/Wp0w3sRycTqvIVM
 hL7wLpiohktw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="331520165"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2020 16:46:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Nov 2020 16:39:34 -0800
Message-Id: <20201121003938.48514-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
References: <20201121003938.48514-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S54 10/14] ice: fix writeback enable logic
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The writeback enable logic was incorrectly implemented (due to
misunderstanding what the side effects of the implementation would be
during polling).

Fix this logic issue, while implementing a new feature allowing the user
to control the writeback frequency using the knobs for controlling
interrupt throttling that we already have.  Basically if you leave
adaptive interrupts enabled, the writeback frequency will be varied even
if busy_polling or if napi-poll is in use.  If the interrupt rates are
set to a fixed value by ethtool -C and adaptive is off, the driver will
allow the user-set interrupt rate to guide how frequently the hardware
will complete descriptors to the driver.

Effectively the user will get a control over the hardware efficiency,
allowing the choice between immediate interrupts or delayed up to a
maximum of the interrupt rate, even when interrupts are disabled
during polling.

Fixes: 2ab28bb04ce6 ("ice: Set WB_ON_ITR when we don't re-enable interrupts")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Co-developed-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 59 ++++++++++-------------
 drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
 2 files changed, 25 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 884581a9c4c7..e608d9cf0300 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1504,22 +1504,11 @@ static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 	struct ice_vsi *vsi = q_vector->vsi;
 	u32 itr_val;
 
-	/* when exiting WB_ON_ITR lets set a low ITR value and trigger
-	 * interrupts to expire right away in case we have more work ready to go
-	 * already
+	/* when exiting WB_ON_ITR just reset the countdown and let ITR
+	 * resume it's normal "interrupts-enabled" path
 	 */
-	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE) {
-		itr_val = ice_buildreg_itr(rx->itr_idx, ICE_WB_ON_ITR_USECS);
-		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx), itr_val);
-		/* set target back to last user set value */
-		rx->target_itr = rx->itr_setting;
-		/* set current to what we just wrote and dynamic if needed */
-		rx->current_itr = ICE_WB_ON_ITR_USECS |
-			(rx->itr_setting & ICE_ITR_DYNAMIC);
-		/* allow normal interrupt flow to start */
+	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE)
 		q_vector->itr_countdown = 0;
-		return;
-	}
 
 	/* This will do nothing if dynamic updates are not enabled */
 	ice_update_itr(q_vector, tx);
@@ -1559,10 +1548,8 @@ static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 			q_vector->itr_countdown--;
 	}
 
-	if (!test_bit(__ICE_DOWN, q_vector->vsi->state))
-		wr32(&q_vector->vsi->back->hw,
-		     GLINT_DYN_CTL(q_vector->reg_idx),
-		     itr_val);
+	if (!test_bit(__ICE_DOWN, vsi->state))
+		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx), itr_val);
 }
 
 /**
@@ -1572,30 +1559,29 @@ static void ice_update_ena_itr(struct ice_q_vector *q_vector)
  * We need to tell hardware to write-back completed descriptors even when
  * interrupts are disabled. Descriptors will be written back on cache line
  * boundaries without WB_ON_ITR enabled, but if we don't enable WB_ON_ITR
- * descriptors may not be written back if they don't fill a cache line until the
- * next interrupt.
+ * descriptors may not be written back if they don't fill a cache line until
+ * the next interrupt.
  *
- * This sets the write-back frequency to 2 microseconds as that is the minimum
- * value that's not 0 due to ITR granularity. Also, set the INTENA_MSK bit to
- * make sure hardware knows we aren't meddling with the INTENA_M bit.
+ * This sets the write-back frequency to whatever was set previously for the
+ * ITR indices. Also, set the INTENA_MSK bit to make sure hardware knows we
+ * aren't meddling with the INTENA_M bit.
  */
 static void ice_set_wb_on_itr(struct ice_q_vector *q_vector)
 {
 	struct ice_vsi *vsi = q_vector->vsi;
 
-	/* already in WB_ON_ITR mode no need to change it */
+	/* already in wb_on_itr mode no need to change it */
 	if (q_vector->itr_countdown == ICE_IN_WB_ON_ITR_MODE)
 		return;
 
-	if (q_vector->num_ring_rx)
-		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
-		     ICE_GLINT_DYN_CTL_WB_ON_ITR(ICE_WB_ON_ITR_USECS,
-						 ICE_RX_ITR));
-
-	if (q_vector->num_ring_tx)
-		wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
-		     ICE_GLINT_DYN_CTL_WB_ON_ITR(ICE_WB_ON_ITR_USECS,
-						 ICE_TX_ITR));
+	/* use previously set ITR values for all of the ITR indices by
+	 * specifying ICE_ITR_NONE, which will vary in adaptive (AIM) mode and
+	 * be static in non-adaptive mode (user configured)
+	 */
+	wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
+	     ((ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S) &
+	      GLINT_DYN_CTL_ITR_INDX_M) | GLINT_DYN_CTL_INTENA_MSK_M |
+	     GLINT_DYN_CTL_WB_ON_ITR_M);
 
 	q_vector->itr_countdown = ICE_IN_WB_ON_ITR_MODE;
 }
@@ -1662,8 +1648,13 @@ int ice_napi_poll(struct napi_struct *napi, int budget)
 	}
 
 	/* If work not completed, return budget and polling will return */
-	if (!clean_complete)
+	if (!clean_complete) {
+		/* Set the writeback on ITR so partial completions of
+		 * cache-lines will still continue even if we're polling.
+		 */
+		ice_set_wb_on_itr(q_vector);
 		return budget;
+	}
 
 	/* Exit the polling mode, but don't re-enable interrupts if stack might
 	 * poll us due to busy-polling
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 471c098b3dfb..605cfa1d96db 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -240,7 +240,6 @@ enum ice_rx_dtype {
 #define ICE_DFLT_INTRL	0
 #define ICE_MAX_INTRL	236
 
-#define ICE_WB_ON_ITR_USECS	2
 #define ICE_IN_WB_ON_ITR_MODE	255
 /* Sets WB_ON_ITR and assumes INTENA bit is already cleared, which allows
  * setting the MSK_M bit to tell hardware to ignore the INTENA_M bit. Also,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
