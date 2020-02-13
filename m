Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F6315CD5A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:32:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C291864E6;
	Thu, 13 Feb 2020 21:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zs1eeLyH1cYQ; Thu, 13 Feb 2020 21:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA3088813E;
	Thu, 13 Feb 2020 21:32:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 390F01BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 357622157D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFKaNA9sQfra for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id CFDCA21548
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382405"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:50 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:16 -0800
Message-Id: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 02/15] ice: update malicious driver
 detection event handling
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

Update the PF VFs MDD event message to rate limit once per second and
report the total number Rx|Tx event count. Add support to print pending
MDD events that occur during the rate limit. The use of net_ratelimit did
not allow for per VF Rx|Tx granularity.

Additional PF MDD log messages are guarded by netif_msg_[rx|tx]_err().

Since VF RX MDD events disable the queue, add ethtool private flag
mdd-auto-reset-vf to configure VF reset to re-enable the queue.

Disable anti-spoof detection interrupt to prevent spurious events
during a function reset.

To avoid race condition do not make PF MDD register reads conditional
on global MDD result.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
v2:
- Add MAC address to MDD message
---
 drivers/net/ethernet/intel/ice/ice.h          |   4 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   1 +
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 126 ++++++++++--------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  56 +++++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  20 ++-
 6 files changed, 150 insertions(+), 59 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 8b33fe62198f..92e44a87f905 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -216,6 +216,7 @@ enum ice_state {
 	__ICE_SERVICE_SCHED,
 	__ICE_SERVICE_DIS,
 	__ICE_OICR_INTR_DIS,		/* Global OICR interrupt disabled */
+	__ICE_MDD_VF_PRINT_PENDING,	/* set when MDD event handle */
 	__ICE_STATE_NBITS		/* must be last */
 };
 
@@ -347,6 +348,7 @@ enum ice_pf_flags {
 	ICE_FLAG_FW_LLDP_AGENT,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
 	ICE_FLAG_LEGACY_RX,
+	ICE_FLAG_MDD_AUTO_RESET_VF,
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
 
@@ -370,6 +372,8 @@ struct ice_pf {
 	u16 num_vfs_supported;		/* num VFs supported for this PF */
 	u16 num_vf_qps;			/* num queue pairs per VF */
 	u16 num_vf_msix;		/* num vectors per VF */
+	/* used to ratelimit the MDD event logging */
+	unsigned long last_printed_mdd_jiffies;
 	DECLARE_BITMAP(state, __ICE_STATE_NBITS);
 	DECLARE_BITMAP(flags, ICE_PF_FLAGS_NBITS);
 	unsigned long *avail_txqs;	/* bitmap to track PF Tx queue usage */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 583e07fffd5f..63a69ea02d22 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -157,6 +157,7 @@ struct ice_priv_flag {
 static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 	ICE_PRIV_FLAG("link-down-on-close", ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA),
 	ICE_PRIV_FLAG("fw-lldp-agent", ICE_FLAG_FW_LLDP_AGENT),
+	ICE_PRIV_FLAG("mdd-auto-reset-vf", ICE_FLAG_MDD_AUTO_RESET_VF),
 	ICE_PRIV_FLAG("legacy-rx", ICE_FLAG_LEGACY_RX),
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index d767c398ac71..57f1c4513c0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -218,6 +218,8 @@
 #define VPLAN_TX_QBASE_VFNUMQ_M			ICE_M(0xFF, 16)
 #define VPLAN_TXQ_MAPENA(_VF)			(0x00073800 + ((_VF) * 4))
 #define VPLAN_TXQ_MAPENA_TX_ENA_M		BIT(0)
+#define GL_MDCK_TX_TDPU				0x00049348
+#define GL_MDCK_TX_TDPU_RCU_ANTISPOOF_ITR_DIS_M BIT(1)
 #define GL_MDET_RX				0x00294C00
 #define GL_MDET_RX_QNUM_S			0
 #define GL_MDET_RX_QNUM_M			ICE_M(0x7FFF, 0)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3857e3f7a3f2..bbc428c4ec07 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1190,20 +1190,28 @@ static void ice_service_timer(struct timer_list *t)
  * ice_handle_mdd_event - handle malicious driver detect event
  * @pf: pointer to the PF structure
  *
- * Called from service task. OICR interrupt handler indicates MDD event
+ * Called from service task. OICR interrupt handler indicates MDD event.
+ * VF MDD logging is guarded by net_ratelimit. Additional PF and VF log
+ * messages are wrapped by netif_msg_[rx|tx]_err. Since VF Rx MDD events
+ * disable the queue, the PF can be configured to reset the VF using ethtool
+ * private flag mdd-auto-reset-vf.
  */
 static void ice_handle_mdd_event(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	bool mdd_detected = false;
 	u32 reg;
 	int i;
 
-	if (!test_and_clear_bit(__ICE_MDD_EVENT_PENDING, pf->state))
+	if (!test_and_clear_bit(__ICE_MDD_EVENT_PENDING, pf->state)) {
+		/* Since the VF MDD event logging is rate limited, check if
+		 * there are pending MDD events.
+		 */
+		ice_print_vfs_mdd_events(pf);
 		return;
+	}
 
-	/* find what triggered the MDD event */
+	/* find what triggered an MDD event */
 	reg = rd32(hw, GL_MDET_TX_PQM);
 	if (reg & GL_MDET_TX_PQM_VALID_M) {
 		u8 pf_num = (reg & GL_MDET_TX_PQM_PF_NUM_M) >>
@@ -1219,7 +1227,6 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
 		wr32(hw, GL_MDET_TX_PQM, 0xffffffff);
-		mdd_detected = true;
 	}
 
 	reg = rd32(hw, GL_MDET_TX_TCLAN);
@@ -1237,7 +1244,6 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			dev_info(dev, "Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
 		wr32(hw, GL_MDET_TX_TCLAN, 0xffffffff);
-		mdd_detected = true;
 	}
 
 	reg = rd32(hw, GL_MDET_RX);
@@ -1255,85 +1261,85 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			dev_info(dev, "Malicious Driver Detection event %d on RX queue %d PF# %d VF# %d\n",
 				 event, queue, pf_num, vf_num);
 		wr32(hw, GL_MDET_RX, 0xffffffff);
-		mdd_detected = true;
 	}
 
-	if (mdd_detected) {
-		bool pf_mdd_detected = false;
-
-		reg = rd32(hw, PF_MDET_TX_PQM);
-		if (reg & PF_MDET_TX_PQM_VALID_M) {
-			wr32(hw, PF_MDET_TX_PQM, 0xFFFF);
-			dev_info(dev, "TX driver issue detected, PF reset issued\n");
-			pf_mdd_detected = true;
-		}
+	/* check to see if this PF caused an MDD event */
+	reg = rd32(hw, PF_MDET_TX_PQM);
+	if (reg & PF_MDET_TX_PQM_VALID_M) {
+		wr32(hw, PF_MDET_TX_PQM, 0xFFFF);
+		if (netif_msg_tx_err(pf))
+			dev_info(dev, "Malicious Driver Detection event TX_PQM detected on PF\n");
+	}
 
-		reg = rd32(hw, PF_MDET_TX_TCLAN);
-		if (reg & PF_MDET_TX_TCLAN_VALID_M) {
-			wr32(hw, PF_MDET_TX_TCLAN, 0xFFFF);
-			dev_info(dev, "TX driver issue detected, PF reset issued\n");
-			pf_mdd_detected = true;
-		}
+	reg = rd32(hw, PF_MDET_TX_TCLAN);
+	if (reg & PF_MDET_TX_TCLAN_VALID_M) {
+		wr32(hw, PF_MDET_TX_TCLAN, 0xFFFF);
+		if (netif_msg_tx_err(pf))
+			dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on PF\n");
+	}
 
-		reg = rd32(hw, PF_MDET_RX);
-		if (reg & PF_MDET_RX_VALID_M) {
-			wr32(hw, PF_MDET_RX, 0xFFFF);
-			dev_info(dev, "RX driver issue detected, PF reset issued\n");
-			pf_mdd_detected = true;
-		}
-		/* Queue belongs to the PF initiate a reset */
-		if (pf_mdd_detected) {
-			set_bit(__ICE_NEEDS_RESTART, pf->state);
-			ice_service_task_schedule(pf);
-		}
+	reg = rd32(hw, PF_MDET_RX);
+	if (reg & PF_MDET_RX_VALID_M) {
+		wr32(hw, PF_MDET_RX, 0xFFFF);
+		if (netif_msg_rx_err(pf))
+			dev_info(dev, "Malicious Driver Detection event RX detected on PF\n");
 	}
 
-	/* check to see if one of the VFs caused the MDD */
+	/* Check to see if one of the VFs caused an MDD event, and then
+	 * increment counters and set print pending
+	 */
 	ice_for_each_vf(pf, i) {
 		struct ice_vf *vf = &pf->vf[i];
 
-		bool vf_mdd_detected = false;
-
 		reg = rd32(hw, VP_MDET_TX_PQM(i));
 		if (reg & VP_MDET_TX_PQM_VALID_M) {
 			wr32(hw, VP_MDET_TX_PQM(i), 0xFFFF);
-			vf_mdd_detected = true;
-			dev_info(dev, "TX driver issue detected on VF %d\n",
-				 i);
+			vf->mdd_tx_events.count++;
+			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			if (netif_msg_tx_err(pf))
+				dev_info(dev, "Malicious Driver Detection event TX_PQM detected on VF %d\n",
+					 i);
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TCLAN(i));
 		if (reg & VP_MDET_TX_TCLAN_VALID_M) {
 			wr32(hw, VP_MDET_TX_TCLAN(i), 0xFFFF);
-			vf_mdd_detected = true;
-			dev_info(dev, "TX driver issue detected on VF %d\n",
-				 i);
+			vf->mdd_tx_events.count++;
+			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			if (netif_msg_tx_err(pf))
+				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
+					 i);
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TDPU(i));
 		if (reg & VP_MDET_TX_TDPU_VALID_M) {
 			wr32(hw, VP_MDET_TX_TDPU(i), 0xFFFF);
-			vf_mdd_detected = true;
-			dev_info(dev, "TX driver issue detected on VF %d\n",
-				 i);
+			vf->mdd_tx_events.count++;
+			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			if (netif_msg_tx_err(pf))
+				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
+					 i);
 		}
 
 		reg = rd32(hw, VP_MDET_RX(i));
 		if (reg & VP_MDET_RX_VALID_M) {
 			wr32(hw, VP_MDET_RX(i), 0xFFFF);
-			vf_mdd_detected = true;
-			dev_info(dev, "RX driver issue detected on VF %d\n",
-				 i);
-		}
-
-		if (vf_mdd_detected) {
-			vf->num_mdd_events++;
-			if (vf->num_mdd_events &&
-			    vf->num_mdd_events <= ICE_MDD_EVENTS_THRESHOLD)
-				dev_info(dev, "VF %d has had %llu MDD events since last boot, Admin might need to reload AVF driver with this number of events\n",
-					 i, vf->num_mdd_events);
+			vf->mdd_rx_events.count++;
+			set_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state);
+			if (netif_msg_rx_err(pf))
+				dev_info(dev, "Malicious Driver Detection event RX detected on VF %d\n",
+					 i);
+
+			/* Since the queue is disabled on VF Rx MDD events, the
+			 * PF can be configured to reset the VF through ethtool
+			 * private flag mdd-auto-reset-vf.
+			 */
+			if (test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags))
+				ice_reset_vf(&pf->vf[i], false);
 		}
 	}
+
+	ice_print_vfs_mdd_events(pf);
 }
 
 /**
@@ -2001,6 +2007,14 @@ static void ice_ena_misc_vector(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	u32 val;
 
+	/* Disable anti-spoof detection interrupt to prevent spurious event
+	 * interrupts during a function reset. Anti-spoof functionally is
+	 * still supported.
+	 */
+	val = rd32(hw, GL_MDCK_TX_TDPU);
+	val |= GL_MDCK_TX_TDPU_RCU_ANTISPOOF_ITR_DIS_M;
+	wr32(hw, GL_MDCK_TX_TDPU, val);
+
 	/* clear things first */
 	wr32(hw, PFINT_OICR_ENA, 0);	/* disable all */
 	rd32(hw, PFINT_OICR);		/* read to clear */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 7d778b3d5d5a..1a9b374dac16 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -171,6 +171,11 @@ static void ice_free_vf_res(struct ice_vf *vf)
 	}
 
 	last_vector_idx = vf->first_vector_idx + pf->num_vf_msix - 1;
+
+	/* clear VF MDD event information */
+	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
+	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
+
 	/* Disable interrupts so that VF starts in a known state */
 	for (i = vf->first_vector_idx; i <= last_vector_idx; i++) {
 		wr32(&pf->hw, GLINT_DYN_CTL(i), GLINT_DYN_CTL_CLEARPBA_M);
@@ -1175,7 +1180,7 @@ static bool ice_is_vf_disabled(struct ice_vf *vf)
  *
  * Returns true if the VF is reset, false otherwise.
  */
-static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
+bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 {
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
@@ -3538,3 +3543,52 @@ int ice_get_vf_stats(struct net_device *netdev, int vf_id,
 
 	return 0;
 }
+
+/**
+ * ice_print_vfs_mdd_event - print VFs malicious driver detect event
+ * @pf: pointer to the PF structure
+ *
+ * Called from ice_handle_mdd_event to rate limit and print VFs MDD events.
+ */
+void ice_print_vfs_mdd_events(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	int i;
+
+	/* check that there are pending MDD events to print */
+	if (!test_and_clear_bit(__ICE_MDD_VF_PRINT_PENDING, pf->state))
+		return;
+
+	/* VF MDD event logs are rate limited to one second intervals */
+	if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ * 1))
+		return;
+
+	pf->last_printed_mdd_jiffies = jiffies;
+
+	ice_for_each_vf(pf, i) {
+		struct ice_vf *vf = &pf->vf[i];
+
+		/* only print Rx MDD event message if there are new events */
+		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
+			vf->mdd_rx_events.last_printed =
+							vf->mdd_rx_events.count;
+
+			dev_info(dev, "%d Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
+				 vf->mdd_rx_events.count, hw->pf_id, i,
+				 vf->dflt_lan_addr.addr,
+				 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
+					  ? "on" : "off");
+		}
+
+		/* only print Tx MDD event message if there are new events */
+		if (vf->mdd_tx_events.count != vf->mdd_tx_events.last_printed) {
+			vf->mdd_tx_events.last_printed =
+							vf->mdd_tx_events.count;
+
+			dev_info(dev, "%d Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
+				 vf->mdd_tx_events.count, hw->pf_id, i,
+				 vf->dflt_lan_addr.addr);
+		}
+	}
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 474b2613f09c..656f1909b38f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -55,6 +55,13 @@ enum ice_virtchnl_cap {
 	ICE_VIRTCHNL_VF_CAP_PRIVILEGE,
 };
 
+/* VF MDD events print structure */
+struct ice_mdd_vf_events {
+	u16 count;			/* total count of Rx|Tx events */
+	/* count number of the last printed event */
+	u16 last_printed;
+};
+
 /* VF information structure */
 struct ice_vf {
 	struct ice_pf *pf;
@@ -83,13 +90,14 @@ struct ice_vf {
 	unsigned int tx_rate;		/* Tx bandwidth limit in Mbps */
 	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
 
-	u64 num_mdd_events;		/* number of MDD events detected */
 	u64 num_inval_msgs;		/* number of continuous invalid msgs */
 	u64 num_valid_msgs;		/* number of valid msgs detected */
 	unsigned long vf_caps;		/* VF's adv. capabilities */
 	u8 num_req_qs;			/* num of queue pairs requested by VF */
 	u16 num_mac;
 	u16 num_vf_qs;			/* num of queue configured per VF */
+	struct ice_mdd_vf_events mdd_rx_events;
+	struct ice_mdd_vf_events mdd_tx_events;
 };
 
 #ifdef CONFIG_PCI_IOV
@@ -104,6 +112,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_vc_notify_link_state(struct ice_pf *pf);
 void ice_vc_notify_reset(struct ice_pf *pf);
 bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr);
+bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
 
 int
 ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
@@ -123,7 +132,7 @@ ice_get_vf_stats(struct net_device *netdev, int vf_id,
 		 struct ifla_vf_stats *vf_stats);
 void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
-
+void ice_print_vfs_mdd_events(struct ice_pf *pf);
 #else /* CONFIG_PCI_IOV */
 #define ice_process_vflr_event(pf) do {} while (0)
 #define ice_free_vfs(pf) do {} while (0)
@@ -132,6 +141,7 @@ ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 #define ice_vc_notify_reset(pf) do {} while (0)
 #define ice_set_vf_state_qs_dis(vf) do {} while (0)
 #define ice_vf_lan_overflow_event(pf, event) do {} while (0)
+#define ice_print_vfs_mdd_events(pf) do {} while (0)
 
 static inline bool
 ice_reset_all_vfs(struct ice_pf __always_unused *pf,
@@ -140,6 +150,12 @@ ice_reset_all_vfs(struct ice_pf __always_unused *pf,
 	return true;
 }
 
+static inline bool
+ice_reset_vf(struct ice_vf __always_unused *vf, bool __always_unused is_vflr)
+{
+	return true;
+}
+
 static inline int
 ice_sriov_configure(struct pci_dev __always_unused *pdev,
 		    int __always_unused num_vfs)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
