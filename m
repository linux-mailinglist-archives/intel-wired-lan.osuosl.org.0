Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EED42993B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Oct 2021 23:57:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABA8D60688;
	Mon, 11 Oct 2021 21:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQvcHRJ6mHqN; Mon, 11 Oct 2021 21:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFB5160624;
	Mon, 11 Oct 2021 21:57:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 229061BF865
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 21:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C63A040260
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 21:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KnoGHlEYjf3b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Oct 2021 21:55:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F18E4036F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Oct 2021 21:55:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="313172220"
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="313172220"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 14:55:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,365,1624345200"; d="scan'208";a="526178466"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 14:55:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 14:54:30 -0700
Message-Id: <20211011215433.1525457-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211011215433.1525457-1-jacob.e.keller@intel.com>
References: <20211011215433.1525457-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Oct 2021 21:57:26 +0000
Subject: [Intel-wired-lan] [net-next PATCH 6/9] ice: implement basic E822
 PTP support
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

Implement support for the basic operations needed to enable the PTP
hardware clock on E822 devices.

This includes implementations for the various PHY access functions, as
well as the ability to start and stop the PHY timers. This is different
from the E810 device because the configuration depends on link speed, so
we cannot just start the PHYs immediately. We must wait until the link
is up to get proper values for the speed based initialization.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |    1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |    7 +
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  266 ++-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   26 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  300 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 1863 ++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  323 +++
 7 files changed, 2717 insertions(+), 69 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_consts.h

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index a49082485642..7bff0450b76c 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -100,6 +100,7 @@
 #define PF_SB_ATQT				0x0022FE00
 #define PF_SB_ATQT_ATQT_S			0
 #define PF_SB_ATQT_ATQT_M			ICE_M(0x3FF, 0)
+#define PF_SB_REM_DEV_CTL			0x002300F0
 #define PRTDCB_GENC				0x00083000
 #define PRTDCB_GENC_PFCLDA_S			16
 #define PRTDCB_GENC_PFCLDA_M			ICE_M(0xFFFF, 16)
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e4cfbcfa87c9..427ef92446f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1022,6 +1022,9 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return 0;
 
+	if (!ice_is_e810(&pf->hw))
+		ice_ptp_link_change(pf, pf->hw.pf_id, link_up);
+
 	if (ice_is_dcb_active(pf)) {
 		if (test_bit(ICE_FLAG_DCB_ENA, pf->flags))
 			ice_dcb_rebuild(pf);
@@ -5685,6 +5688,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
+		if (!ice_is_e810(&pf->hw))
+			ice_ptp_link_change(pf, pf->hw.pf_id, true);
 	}
 
 	ice_service_task_schedule(pf);
@@ -6074,6 +6079,8 @@ int ice_down(struct ice_vsi *vsi)
 	 * vsi->state ICE_DOWN bit
 	 */
 	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
+		if (!ice_is_e810(&vsi->back->hw))
+			ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
 		netif_carrier_off(vsi->netdev);
 		netif_tx_disable(vsi->netdev);
 	} else if (vsi->type == ICE_VSI_SWITCHDEV_CTRL) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 4fffae345bf9..891db79f0a12 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -6,6 +6,8 @@
 
 #define E810_OUT_PROP_DELAY_NS 1
 
+#define UNKNOWN_INCVAL_E822 0x100000000ULL
+
 static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 	/* name    idx   func         chan */
 	{ "GNSS",  GNSS, PTP_PF_EXTTS, 0, { 0, } },
@@ -698,7 +700,200 @@ static int ice_ptp_write_adj(struct ice_pf *pf, s32 adj)
  */
 static u64 ice_base_incval(struct ice_pf *pf)
 {
-	return ICE_PTP_NOMINAL_INCVAL_E810;
+	struct ice_hw *hw = &pf->hw;
+	u64 incval;
+
+	if (ice_is_e810(hw))
+		incval = ICE_PTP_NOMINAL_INCVAL_E810;
+	else if (ice_e822_time_ref(hw) < NUM_ICE_TIME_REF_FREQ)
+		incval = ice_e822_nominal_incval(ice_e822_time_ref(hw));
+	else
+		incval = UNKNOWN_INCVAL_E822;
+
+	dev_dbg(ice_pf_to_dev(pf), "PTP: using base increment value of 0x%016llx\n",
+		incval);
+
+	return incval;
+}
+
+/**
+ * ice_ptp_reset_ts_memory_quad - Reset timestamp memory for one quad
+ * @pf: The PF private data structure
+ * @quad: The quad (0-4)
+ */
+static void ice_ptp_reset_ts_memory_quad(struct ice_pf *pf, int quad)
+{
+	struct ice_hw *hw = &pf->hw;
+
+	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
+	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
+}
+
+/**
+ * ice_ptp_port_phy_stop - Stop timestamping for a PHY port
+ * @ptp_port: PTP port to stop
+ */
+static int
+ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
+{
+	struct ice_pf *pf = ptp_port_to_pf(ptp_port);
+	u8 port = ptp_port->port_num;
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	if (ice_is_e810(hw))
+		return 0;
+
+	mutex_lock(&ptp_port->ps_lock);
+
+	err = ice_stop_phy_timer_e822(hw, port, true);
+	if (err)
+		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d down, err %d\n",
+			port, err);
+
+	mutex_unlock(&ptp_port->ps_lock);
+
+	return err;
+}
+
+/**
+ * ice_ptp_port_phy_restart - (Re)start and calibrate PHY timestamping
+ * @ptp_port: PTP port for which the PHY start is set
+ *
+ * Start the PHY timestamping block, and initiate Vernier timestamping
+ * calibration. If timestamping cannot be calibrated (such as if link is down)
+ * then disable the timestamping block instead.
+ */
+static int
+ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
+{
+	struct ice_pf *pf = ptp_port_to_pf(ptp_port);
+	u8 port = ptp_port->port_num;
+	struct ice_hw *hw = &pf->hw;
+	int err;
+
+	if (ice_is_e810(hw))
+		return 0;
+
+	if (!ptp_port->link_up)
+		return ice_ptp_port_phy_stop(ptp_port);
+
+	mutex_lock(&ptp_port->ps_lock);
+
+	/* temporarily disable Tx timestamps while calibrating PHY offset */
+	ptp_port->tx.calibrating = true;
+
+	/* Start the PHY timer in bypass mode */
+	err = ice_start_phy_timer_e822(hw, port, true);
+	if (err)
+		goto out_unlock;
+
+	/* Enable Tx timestamps right away */
+	ptp_port->tx.calibrating = false;
+
+out_unlock:
+	if (err)
+		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d up, err %d\n",
+			port, err);
+
+	mutex_unlock(&ptp_port->ps_lock);
+
+	return err;
+}
+
+/**
+ * ice_ptp_link_change - Set or clear port registers for timestamping
+ * @pf: Board private structure
+ * @port: Port for which the PHY start is set
+ * @linkup: Link is up or down
+ */
+int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
+{
+	struct ice_ptp_port *ptp_port;
+
+	if (!test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
+		return 0;
+
+	if (port >= ICE_NUM_EXTERNAL_PORTS)
+		return -EINVAL;
+
+	ptp_port = &pf->ptp.port;
+	if (ptp_port->port_num != port)
+		return -EINVAL;
+
+	/* Update cached link err for this port immediately */
+	ptp_port->link_up = linkup;
+
+	if (!test_bit(ICE_FLAG_PTP, pf->flags))
+		/* PTP is not setup */
+		return -EAGAIN;
+
+	return ice_ptp_port_phy_restart(ptp_port);
+}
+
+/**
+ * ice_ptp_reset_ts_memory - Reset timestamp memory for all quads
+ * @pf: The PF private data structure
+ */
+static void ice_ptp_reset_ts_memory(struct ice_pf *pf)
+{
+	int quad;
+
+	quad = pf->hw.port_info->lport / ICE_PORTS_PER_QUAD;
+	ice_ptp_reset_ts_memory_quad(pf, quad);
+}
+
+/**
+ * ice_ptp_tx_ena_intr - Enable or disable the Tx timestamp interrupt
+ * @pf: PF private structure
+ * @ena: bool value to enable or disable interrupt
+ * @threshold: Minimum number of packets at which intr is triggered
+ *
+ * Utility function to enable or disable Tx timestamp interrupt and threshold
+ */
+static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
+{
+	struct ice_hw *hw = &pf->hw;
+	int err = 0;
+	int quad;
+	u32 val;
+
+	ice_ptp_reset_ts_memory(pf);
+
+	for (quad = 0; quad < ICE_MAX_QUAD; quad++) {
+		err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG,
+					     &val);
+		if (err)
+			break;
+
+		if (ena) {
+			val |= Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
+			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
+			val |= ((threshold << Q_REG_TX_MEM_GBL_CFG_INTR_THR_S) &
+				Q_REG_TX_MEM_GBL_CFG_INTR_THR_M);
+		} else {
+			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
+		}
+
+		err = ice_write_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG,
+					      val);
+		if (err)
+			break;
+	}
+
+	if (err)
+		dev_err(ice_pf_to_dev(pf), "PTP failed in intr ena, err %d\n",
+			err);
+	return err;
+}
+
+/**
+ * ice_ptp_reset_phy_timestamping - Reset PHY timestamping block
+ * @pf: Board private structure
+ */
+static void ice_ptp_reset_phy_timestamping(struct ice_pf *pf)
+{
+	ice_ptp_port_phy_restart(&pf->ptp.port);
 }
 
 /**
@@ -925,7 +1120,10 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 		start_time = div64_u64(current_time + NSEC_PER_SEC - 1,
 				       NSEC_PER_SEC) * NSEC_PER_SEC + phase;
 
-	start_time -= E810_OUT_PROP_DELAY_NS;
+	if (ice_is_e810(hw))
+		start_time -= E810_OUT_PROP_DELAY_NS;
+	else
+		start_time -= ice_e822_pps_delay(ice_e822_time_ref(hw));
 
 	/* 2. Write TARGET time */
 	wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), lower_32_bits(start_time));
@@ -1108,6 +1306,12 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
+	/* For Vernier mode, we need to recalibrate after new settime
+	 * Start with disabling timestamp block
+	 */
+	if (pf->ptp.port.link_up)
+		ice_ptp_port_phy_stop(&pf->ptp.port);
+
 	if (!ice_ptp_lock(hw)) {
 		err = -EBUSY;
 		goto exit;
@@ -1124,6 +1328,10 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 
 	/* Reenable periodic outputs */
 	ice_ptp_enable_all_clkout(pf);
+
+	/* Recalibrate and re-enable timestamp block */
+	if (pf->ptp.port.link_up)
+		ice_ptp_port_phy_restart(&pf->ptp.port);
 exit:
 	if (err) {
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
@@ -1460,7 +1668,8 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	info->gettimex64 = ice_ptp_gettimex64;
 	info->settime64 = ice_ptp_settime64;
 
-	ice_ptp_set_funcs_e810(pf, info);
+	if (ice_is_e810(&pf->hw))
+		ice_ptp_set_funcs_e810(pf, info);
 }
 
 /**
@@ -1610,7 +1819,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
 	u8 idx;
 
 	/* Check if this tracker is initialized */
-	if (!tx->init)
+	if (!tx->init || tx->calibrating)
 		return -1;
 
 	spin_lock(&tx->lock);
@@ -1732,6 +1941,27 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	tx->len = 0;
 }
 
+/**
+ * ice_ptp_init_tx_e822 - Initialize tracking for Tx timestamps
+ * @pf: Board private structure
+ * @tx: the Tx tracking structure to initialize
+ * @port: the port this structure tracks
+ *
+ * Initialize the Tx timestamp tracker for this port. For generic MAC devices,
+ * the timestamp block is shared for all ports in the same quad. To avoid
+ * ports using the same timestamp index, logically break the block of
+ * registers into chunks based on the port number.
+ */
+static int
+ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
+{
+	tx->quad = port / ICE_PORTS_PER_QUAD;
+	tx->quad_offset = tx->quad * INDEX_PER_PORT;
+	tx->len = INDEX_PER_PORT;
+
+	return ice_ptp_alloc_tx_tracker(tx);
+}
+
 /**
  * ice_ptp_init_tx_e810 - Initialize tracking for Tx timestamps
  * @pf: Board private structure
@@ -1815,7 +2045,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
 	struct timespec64 ts;
-	int err;
+	int err, itr = 1;
 
 	err = ice_ptp_init_phc(hw);
 	if (err) {
@@ -1848,6 +2078,13 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	/* Release the global hardware lock */
 	ice_ptp_unlock(hw);
 
+	if (!ice_is_e810(hw)) {
+		/* Enable quad interrupts */
+		err = ice_ptp_tx_ena_intr(pf, true, itr);
+		if (err)
+			goto err_exit;
+	}
+
 	/* Ensure we have a clock device */
 	err = ice_ptp_create_clock(pf);
 	if (err)
@@ -1885,10 +2122,6 @@ void ice_ptp_init(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
-	/* PTP is currently only supported on E810 devices */
-	if (!ice_is_e810(hw))
-		return;
-
 	/* If this function owns the clock hardware, it must allocate and
 	 * configure the PTP clock device to represent it.
 	 */
@@ -1901,8 +2134,14 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_cfg_timestamp(pf, false);
 
-	/* Initialize the PTP port Tx timestamp tracker */
-	ice_ptp_init_tx_e810(pf, &pf->ptp.port.tx);
+	/* Initialize PTP port structure */
+	mutex_init(&pf->ptp.port.ps_lock);
+	pf->ptp.port.port_num = pf->hw.pf_id;
+
+	if (ice_is_e810(hw))
+		ice_ptp_init_tx_e810(pf, &pf->ptp.port.tx);
+	else
+		ice_ptp_init_tx_e822(pf, &pf->ptp.port.tx, pf->hw.pf_id);
 
 	/* Initialize work functions */
 	kthread_init_delayed_work(&pf->ptp.work, ice_ptp_periodic_work);
@@ -1923,6 +2162,9 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* Start periodic work going */
 	kthread_queue_delayed_work(pf->ptp.kworker, &pf->ptp.work, 0);
 
+	/* Start the PHY timestamping block */
+	ice_ptp_reset_phy_timestamping(pf);
+
 	dev_info(dev, "PTP init successful\n");
 	return;
 
@@ -1956,6 +2198,8 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	kthread_cancel_delayed_work_sync(&pf->ptp.work);
 
+	ice_ptp_port_phy_stop(&pf->ptp.port);
+	mutex_destroy(&pf->ptp.port.ps_lock);
 	if (pf->ptp.kworker) {
 		kthread_destroy_worker(pf->ptp.kworker);
 		pf->ptp.kworker = NULL;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index f71ad317d6c8..49bcb704c83e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -76,6 +76,8 @@ struct ice_tx_tstamp {
  * @quad_offset: offset into timestamp block of the quad to get the real index
  * @len: length of the tstamps and in_use fields.
  * @init: if true, the tracker is initialized;
+ * @calibrating: if true, the PHY is calibrating the Tx offset. During this
+ *               window, timestamps are temporarily disabled.
  */
 struct ice_ptp_tx {
 	struct kthread_work work;
@@ -86,6 +88,7 @@ struct ice_ptp_tx {
 	u8 quad_offset;
 	u8 len;
 	u8 init;
+	u8 calibrating;
 };
 
 /* Quad and port information for initializing timestamp blocks */
@@ -95,15 +98,20 @@ struct ice_ptp_tx {
 /**
  * struct ice_ptp_port - data used to initialize an external port for PTP
  *
- * This structure contains PTP data related to the external ports. Currently
- * it is used for tracking the Tx timestamps of a port. In the future this
- * structure will also hold information for the E822 port initialization
- * logic.
+ * This structure contains data indicating whether a single external port is
+ * ready for PTP functionality. It is used to track the port initialization
+ * and determine when the port's PHY offset is valid.
  *
  * @tx: Tx timestamp tracking for this port
+ * @ps_lock: mutex used to protect the overall PTP PHY start procedure
+ * @link_up: indicates whether the link is up
+ * @port_num: the port number this structure represents
  */
 struct ice_ptp_port {
 	struct ice_ptp_tx tx;
+	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
+	bool link_up;
+	u8 port_num;
 };
 
 #define GLTSYN_TGT_H_IDX_MAX		4
@@ -146,9 +154,15 @@ struct ice_ptp {
 #define ptp_info_to_pf(i) \
 	container_of(__ptp_info_to_ptp((i)), struct ice_pf, ptp)
 
+#define PFTSYN_SEM_BYTES		4
 #define PTP_SHARED_CLK_IDX_VALID	BIT(31)
+#define TS_CMD_MASK			0xF
+#define SYNC_EXEC_CMD			0x3
 #define ICE_PTP_TS_VALID		BIT(0)
 
+#define FIFO_EMPTY			BIT(2)
+#define FIFO_OK				0xFF
+#define ICE_PTP_FIFO_NUM_CHECKS		5
 /* Per-channel register definitions */
 #define GLTSYN_AUX_OUT(_chan, _idx)	(GLTSYN_AUX_OUT_0(_idx) + ((_chan) * 8))
 #define GLTSYN_AUX_IN(_chan, _idx)	(GLTSYN_AUX_IN_0(_idx) + ((_chan) * 8))
@@ -169,6 +183,7 @@ struct ice_ptp {
 #define N_PER_OUT_E810T			3
 #define N_PER_OUT_E810T_NO_SMA		2
 #define N_EXT_TS_E810_NO_SMA		2
+#define ETH_GLTSYN_ENA(_i)		(0x03000348 + ((_i) * 4))
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 struct ice_pf;
@@ -184,6 +199,7 @@ ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
 void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
+int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 static inline int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 {
@@ -212,5 +228,7 @@ ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
 static inline void ice_ptp_init(struct ice_pf *pf) { }
 static inline void ice_ptp_release(struct ice_pf *pf) { }
+static inline int ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
+{ return 0; }
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 #endif /* _ICE_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
new file mode 100644
index 000000000000..90e1e99de982
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -0,0 +1,300 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2018-2021, Intel Corporation. */
+
+#ifndef _ICE_PTP_CONSTS_H_
+#define _ICE_PTP_CONSTS_H_
+
+/* Constant definitions related to the hardware clock used for PTP 1588
+ * features and functionality.
+ */
+/* Constants defined for the PTP 1588 clock hardware. */
+
+/* struct ice_time_ref_info_e822
+ *
+ * E822 hardware can use different sources as the reference for the PTP
+ * hardware clock. Each clock has different characteristics such as a slightly
+ * different frequency, etc.
+ *
+ * This lookup table defines several constants that depend on the current time
+ * reference. See the struct ice_time_ref_info_e822 for information about the
+ * meaning of each constant.
+ */
+const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ] = {
+	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
+	{
+		/* pll_freq */
+		823437500, /* 823.4375 MHz PLL */
+		/* nominal_incval */
+		0x136e44fabULL,
+		/* pps_delay */
+		11,
+	},
+
+	/* ICE_TIME_REF_FREQ_122_880 -> 122.88 MHz */
+	{
+		/* pll_freq */
+		783360000, /* 783.36 MHz */
+		/* nominal_incval */
+		0x146cc2177ULL,
+		/* pps_delay */
+		12,
+	},
+
+	/* ICE_TIME_REF_FREQ_125_000 -> 125 MHz */
+	{
+		/* pll_freq */
+		796875000, /* 796.875 MHz */
+		/* nominal_incval */
+		0x141414141ULL,
+		/* pps_delay */
+		12,
+	},
+
+	/* ICE_TIME_REF_FREQ_153_600 -> 153.6 MHz */
+	{
+		/* pll_freq */
+		816000000, /* 816 MHz */
+		/* nominal_incval */
+		0x139b9b9baULL,
+		/* pps_delay */
+		12,
+	},
+
+	/* ICE_TIME_REF_FREQ_156_250 -> 156.25 MHz */
+	{
+		/* pll_freq */
+		830078125, /* 830.78125 MHz */
+		/* nominal_incval */
+		0x134679aceULL,
+		/* pps_delay */
+		11,
+	},
+
+	/* ICE_TIME_REF_FREQ_245_760 -> 245.76 MHz */
+	{
+		/* pll_freq */
+		783360000, /* 783.36 MHz */
+		/* nominal_incval */
+		0x146cc2177ULL,
+		/* pps_delay */
+		12,
+	},
+};
+
+/* struct ice_vernier_info_e822
+ *
+ * E822 hardware calibrates the delay of the timestamp indication from the
+ * actual packet transmission or reception during the initialization of the
+ * PHY. To do this, the hardware mechanism uses some conversions between the
+ * various clocks within the PHY block. This table defines constants used to
+ * calculate the correct conversion ratios in the PHY registers.
+ *
+ * Many of the values relate to the PAR/PCS clock conversion registers. For
+ * these registers, a value of 0 means that the associated register is not
+ * used by this link speed, and that the register should be cleared by writing
+ * 0. Other values specify the clock frequency in Hz.
+ */
+const struct ice_vernier_info_e822 e822_vernier[NUM_ICE_PTP_LNK_SPD] = {
+	/* ICE_PTP_LNK_SPD_1G */
+	{
+		/* tx_par_clk */
+		31250000, /* 31.25 MHz */
+		/* rx_par_clk */
+		31250000, /* 31.25 MHz */
+		/* tx_pcs_clk */
+		125000000, /* 125 MHz */
+		/* rx_pcs_clk */
+		125000000, /* 125 MHz */
+		/* tx_desk_rsgb_par */
+		0, /* unused */
+		/* rx_desk_rsgb_par */
+		0, /* unused */
+		/* tx_desk_rsgb_pcs */
+		0, /* unused */
+		/* rx_desk_rsgb_pcs */
+		0, /* unused */
+		/* tx_fixed_delay */
+		25140,
+		/* pmd_adj_divisor */
+		10000000,
+		/* rx_fixed_delay */
+		17372,
+	},
+	/* ICE_PTP_LNK_SPD_10G */
+	{
+		/* tx_par_clk */
+		257812500, /* 257.8125 MHz */
+		/* rx_par_clk */
+		257812500, /* 257.8125 MHz */
+		/* tx_pcs_clk */
+		156250000, /* 156.25 MHz */
+		/* rx_pcs_clk */
+		156250000, /* 156.25 MHz */
+		/* tx_desk_rsgb_par */
+		0, /* unused */
+		/* rx_desk_rsgb_par */
+		0, /* unused */
+		/* tx_desk_rsgb_pcs */
+		0, /* unused */
+		/* rx_desk_rsgb_pcs */
+		0, /* unused */
+		/* tx_fixed_delay */
+		6938,
+		/* pmd_adj_divisor */
+		82500000,
+		/* rx_fixed_delay */
+		6212,
+	},
+	/* ICE_PTP_LNK_SPD_25G */
+	{
+		/* tx_par_clk */
+		644531250, /* 644.53125 MHZ */
+		/* rx_par_clk */
+		644531250, /* 644.53125 MHz */
+		/* tx_pcs_clk */
+		390625000, /* 390.625 MHz */
+		/* rx_pcs_clk */
+		390625000, /* 390.625 MHz */
+		/* tx_desk_rsgb_par */
+		0, /* unused */
+		/* rx_desk_rsgb_par */
+		0, /* unused */
+		/* tx_desk_rsgb_pcs */
+		0, /* unused */
+		/* rx_desk_rsgb_pcs */
+		0, /* unused */
+		/* tx_fixed_delay */
+		2778,
+		/* pmd_adj_divisor */
+		206250000,
+		/* rx_fixed_delay */
+		2491,
+	},
+	/* ICE_PTP_LNK_SPD_25G_RS */
+	{
+		/* tx_par_clk */
+		0, /* unused */
+		/* rx_par_clk */
+		0, /* unused */
+		/* tx_pcs_clk */
+		0, /* unused */
+		/* rx_pcs_clk */
+		0, /* unused */
+		/* tx_desk_rsgb_par */
+		161132812, /* 162.1328125 MHz Reed Solomon gearbox */
+		/* rx_desk_rsgb_par */
+		161132812, /* 162.1328125 MHz Reed Solomon gearbox */
+		/* tx_desk_rsgb_pcs */
+		97656250, /* 97.62625 MHz Reed Solomon gearbox */
+		/* rx_desk_rsgb_pcs */
+		97656250, /* 97.62625 MHz Reed Solomon gearbox */
+		/* tx_fixed_delay */
+		3928,
+		/* pmd_adj_divisor */
+		206250000,
+		/* rx_fixed_delay */
+		29535,
+	},
+	/* ICE_PTP_LNK_SPD_40G */
+	{
+		/* tx_par_clk */
+		257812500,
+		/* rx_par_clk */
+		257812500,
+		/* tx_pcs_clk */
+		156250000, /* 156.25 MHz */
+		/* rx_pcs_clk */
+		156250000, /* 156.25 MHz */
+		/* tx_desk_rsgb_par */
+		0, /* unused */
+		/* rx_desk_rsgb_par */
+		156250000, /* 156.25 MHz deskew clock */
+		/* tx_desk_rsgb_pcs */
+		0, /* unused */
+		/* rx_desk_rsgb_pcs */
+		156250000, /* 156.25 MHz deskew clock */
+		/* tx_fixed_delay */
+		5666,
+		/* pmd_adj_divisor */
+		82500000,
+		/* rx_fixed_delay */
+		4244,
+	},
+	/* ICE_PTP_LNK_SPD_50G */
+	{
+		/* tx_par_clk */
+		644531250, /* 644.53125 MHZ */
+		/* rx_par_clk */
+		644531250, /* 644.53125 MHZ */
+		/* tx_pcs_clk */
+		390625000, /* 390.625 MHz */
+		/* rx_pcs_clk */
+		390625000, /* 390.625 MHz */
+		/* tx_desk_rsgb_par */
+		0, /* unused */
+		/* rx_desk_rsgb_par */
+		195312500, /* 193.3125 MHz deskew clock */
+		/* tx_desk_rsgb_pcs */
+		0, /* unused */
+		/* rx_desk_rsgb_pcs */
+		195312500, /* 193.3125 MHz deskew clock */
+		/* tx_fixed_delay */
+		2778,
+		/* pmd_adj_divisor */
+		206250000,
+		/* rx_fixed_delay */
+		2868,
+	},
+	/* ICE_PTP_LNK_SPD_50G_RS */
+	{
+		/* tx_par_clk */
+		0, /* unused */
+		/* rx_par_clk */
+		644531250, /* 644.53125 MHz */
+		/* tx_pcs_clk */
+		0, /* unused */
+		/* rx_pcs_clk */
+		644531250, /* 644.53125 MHz */
+		/* tx_desk_rsgb_par */
+		322265625, /* 322.265625 MHz Reed Solomon gearbox */
+		/* rx_desk_rsgb_par */
+		322265625, /* 322.265625 MHz Reed Solomon gearbox */
+		/* tx_desk_rsgb_pcs */
+		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		/* rx_desk_rsgb_pcs */
+		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		/* tx_fixed_delay */
+		2095,
+		/* pmd_adj_divisor */
+		206250000,
+		/* rx_fixed_delay */
+		14524,
+	},
+	/* ICE_PTP_LNK_SPD_100G_RS */
+	{
+		/* tx_par_clk */
+		0, /* unused */
+		/* rx_par_clk */
+		644531250, /* 644.53125 MHz */
+		/* tx_pcs_clk */
+		0, /* unused */
+		/* rx_pcs_clk */
+		644531250, /* 644.53125 MHz */
+		/* tx_desk_rsgb_par */
+		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		/* rx_desk_rsgb_par */
+		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		/* tx_desk_rsgb_pcs */
+		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		/* rx_desk_rsgb_pcs */
+		644531250, /* 644.53125 MHz Reed Solomon gearbox */
+		/* tx_fixed_delay */
+		1620,
+		/* pmd_adj_divisor */
+		206250000,
+		/* rx_fixed_delay */
+		7775,
+	},
+};
+
+#endif /* _ICE_PTP_CONSTS_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 9787d45c2fdb..184481b2f8f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3,6 +3,7 @@
 
 #include "ice_common.h"
 #include "ice_ptp_hw.h"
+#include "ice_ptp_consts.h"
 
 /* Low level functions for interacting with and managing the device clock used
  * for the Precision Time Protocol.
@@ -29,6 +30,15 @@
  *
  * For E810 devices, the increment frequency is 812.5 MHz
  *
+ * For E822 devices the clock can be derived from different sources, and the
+ * increment has an effective frequency of one of the following:
+ * - 823.4375 MHz
+ * - 783.36 MHz
+ * - 796.875 MHz
+ * - 816 MHz
+ * - 830.078125 MHz
+ * - 783.36 MHz
+ *
  * The hardware captures timestamps in the PHY for incoming packets, and for
  * outgoing packets on request. To support this, the PHY maintains a timer
  * that matches the lower 64 bits of the global source timer.
@@ -37,6 +47,24 @@
  * shadow registers are used to prepare the desired initial values. A special
  * sync command is issued to trigger copying from the shadow registers into
  * the appropriate source and PHY registers simultaneously.
+ *
+ * The driver supports devices which have different PHYs with subtly different
+ * mechanisms to program and control the timers. We divide the devices into
+ * families named after the first major device, E810 and similar devices, and
+ * E822 and similar devices.
+ *
+ * - E822 based devices have additional support for fine grained Vernier
+ *   calibration which requires significant setup
+ * - The layout of timestamp data in the PHY register blocks is different
+ * - The way timer synchronization commands are issued is different.
+ *
+ * To support this, very low level functions have an e810 or e822 suffix
+ * indicating what type of device they work on. Higher level abstractions for
+ * tasks that can be done on both devices do not have the suffix and will
+ * correctly look up the appropriate low level function when running.
+ *
+ * Functions which only make sense on a single device family may not have
+ * a suitable generic implementation
  */
 
 /**
@@ -51,6 +79,1747 @@ u8 ice_get_ptp_src_clock_index(struct ice_hw *hw)
 	return hw->func_caps.ts_func_info.tmr_index_assoc;
 }
 
+/**
+ * ice_ptp_read_src_incval - Read source timer increment value
+ * @hw: pointer to HW struct
+ *
+ * Read the increment value of the source timer and return it.
+ */
+static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
+{
+	u32 lo, hi;
+	u8 tmr_idx;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
+	hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+
+	return ((u64)(hi & INCVAL_HIGH_M) << 32) | lo;
+}
+
+/**
+ * ice_ptp_src_cmd - Prepare source timer for a timer command
+ * @hw: pointer to HW structure
+ * @cmd: Timer command
+ *
+ * Prepare the source timer for an upcoming timer sync command.
+ */
+static void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+{
+	u32 cmd_val;
+	u8 tmr_idx;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+	cmd_val = tmr_idx << SEL_CPK_SRC;
+
+	switch (cmd) {
+	case INIT_TIME:
+		cmd_val |= GLTSYN_CMD_INIT_TIME;
+		break;
+	case INIT_INCVAL:
+		cmd_val |= GLTSYN_CMD_INIT_INCVAL;
+		break;
+	case ADJ_TIME:
+		cmd_val |= GLTSYN_CMD_ADJ_TIME;
+		break;
+	case ADJ_TIME_AT_TIME:
+		cmd_val |= GLTSYN_CMD_ADJ_INIT_TIME;
+		break;
+	case READ_TIME:
+		cmd_val |= GLTSYN_CMD_READ_TIME;
+		break;
+	}
+
+	wr32(hw, GLTSYN_CMD, cmd_val);
+}
+
+/**
+ * ice_ptp_exec_tmr_cmd - Execute all prepared timer commands
+ * @hw: pointer to HW struct
+ *
+ * Write the SYNC_EXEC_CMD bit to the GLTSYN_CMD_SYNC register, and flush the
+ * write immediately. This triggers the hardware to begin executing all of the
+ * source and PHY timer commands synchronously.
+ */
+static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
+{
+	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
+	ice_flush(hw);
+}
+
+/* E822 family functions
+ *
+ * The following functions operate on the E822 family of devices.
+ */
+
+/**
+ * ice_fill_phy_msg_e822 - Fill message data for a PHY register access
+ * @msg: the PHY message buffer to fill in
+ * @port: the port to access
+ * @offset: the register offset
+ */
+static void
+ice_fill_phy_msg_e822(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
+{
+	int phy_port, phy, quadtype;
+
+	phy_port = port % ICE_PORTS_PER_PHY;
+	phy = port / ICE_PORTS_PER_PHY;
+	quadtype = (port / ICE_PORTS_PER_QUAD) % ICE_NUM_QUAD_TYPE;
+
+	if (quadtype == 0) {
+		msg->msg_addr_low = P_Q0_L(P_0_BASE + offset, phy_port);
+		msg->msg_addr_high = P_Q0_H(P_0_BASE + offset, phy_port);
+	} else {
+		msg->msg_addr_low = P_Q1_L(P_4_BASE + offset, phy_port);
+		msg->msg_addr_high = P_Q1_H(P_4_BASE + offset, phy_port);
+	}
+
+	if (phy == 0)
+		msg->dest_dev = rmn_0;
+	else if (phy == 1)
+		msg->dest_dev = rmn_1;
+	else
+		msg->dest_dev = rmn_2;
+}
+
+/**
+ * ice_is_64b_phy_reg_e822 - Check if this is a 64bit PHY register
+ * @low_addr: the low address to check
+ * @high_addr: on return, contains the high address of the 64bit register
+ *
+ * Checks if the provided low address is one of the known 64bit PHY values
+ * represented as two 32bit registers. If it is, return the appropriate high
+ * register offset to use.
+ */
+static bool ice_is_64b_phy_reg_e822(u16 low_addr, u16 *high_addr)
+{
+	switch (low_addr) {
+	case P_REG_PAR_PCS_TX_OFFSET_L:
+		*high_addr = P_REG_PAR_PCS_TX_OFFSET_U;
+		return true;
+	case P_REG_PAR_PCS_RX_OFFSET_L:
+		*high_addr = P_REG_PAR_PCS_RX_OFFSET_U;
+		return true;
+	case P_REG_PAR_TX_TIME_L:
+		*high_addr = P_REG_PAR_TX_TIME_U;
+		return true;
+	case P_REG_PAR_RX_TIME_L:
+		*high_addr = P_REG_PAR_RX_TIME_U;
+		return true;
+	case P_REG_TOTAL_TX_OFFSET_L:
+		*high_addr = P_REG_TOTAL_TX_OFFSET_U;
+		return true;
+	case P_REG_TOTAL_RX_OFFSET_L:
+		*high_addr = P_REG_TOTAL_RX_OFFSET_U;
+		return true;
+	case P_REG_UIX66_10G_40G_L:
+		*high_addr = P_REG_UIX66_10G_40G_U;
+		return true;
+	case P_REG_UIX66_25G_100G_L:
+		*high_addr = P_REG_UIX66_25G_100G_U;
+		return true;
+	case P_REG_TX_CAPTURE_L:
+		*high_addr = P_REG_TX_CAPTURE_U;
+		return true;
+	case P_REG_RX_CAPTURE_L:
+		*high_addr = P_REG_RX_CAPTURE_U;
+		return true;
+	case P_REG_TX_TIMER_INC_PRE_L:
+		*high_addr = P_REG_TX_TIMER_INC_PRE_U;
+		return true;
+	case P_REG_RX_TIMER_INC_PRE_L:
+		*high_addr = P_REG_RX_TIMER_INC_PRE_U;
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_is_40b_phy_reg_e822 - Check if this is a 40bit PHY register
+ * @low_addr: the low address to check
+ * @high_addr: on return, contains the high address of the 40bit value
+ *
+ * Checks if the provided low address is one of the known 40bit PHY values
+ * split into two registers with the lower 8 bits in the low register and the
+ * upper 32 bits in the high register. If it is, return the appropriate high
+ * register offset to use.
+ */
+static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
+{
+	switch (low_addr) {
+	case P_REG_TIMETUS_L:
+		*high_addr = P_REG_TIMETUS_U;
+		return true;
+	case P_REG_PAR_RX_TUS_L:
+		*high_addr = P_REG_PAR_RX_TUS_U;
+		return true;
+	case P_REG_PAR_TX_TUS_L:
+		*high_addr = P_REG_PAR_TX_TUS_U;
+		return true;
+	case P_REG_PCS_RX_TUS_L:
+		*high_addr = P_REG_PCS_RX_TUS_U;
+		return true;
+	case P_REG_PCS_TX_TUS_L:
+		*high_addr = P_REG_PCS_TX_TUS_U;
+		return true;
+	case P_REG_DESK_PAR_RX_TUS_L:
+		*high_addr = P_REG_DESK_PAR_RX_TUS_U;
+		return true;
+	case P_REG_DESK_PAR_TX_TUS_L:
+		*high_addr = P_REG_DESK_PAR_TX_TUS_U;
+		return true;
+	case P_REG_DESK_PCS_RX_TUS_L:
+		*high_addr = P_REG_DESK_PCS_RX_TUS_U;
+		return true;
+	case P_REG_DESK_PCS_TX_TUS_L:
+		*high_addr = P_REG_DESK_PCS_TX_TUS_U;
+		return true;
+	default:
+		return false;
+	}
+}
+
+/**
+ * ice_read_phy_reg_e822 - Read a PHY register
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @offset: PHY register offset to read
+ * @val: on return, the contents read from the PHY
+ *
+ * Read a PHY register for the given port over the device sideband queue.
+ */
+int
+ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
+{
+	struct ice_sbq_msg_input msg = {0};
+	int err;
+
+	ice_fill_phy_msg_e822(&msg, port, offset);
+	msg.opcode = ice_sbq_msg_rd;
+
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
+		return err;
+	}
+
+	*val = msg.data;
+
+	return 0;
+}
+
+/**
+ * ice_read_64b_phy_reg_e822 - Read a 64bit value from PHY registers
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: on return, the contents of the 64bit value from the PHY registers
+ *
+ * Reads the two registers associated with a 64bit value and returns it in the
+ * val pointer. The offset always specifies the lower register offset to use.
+ * The high offset is looked up. This function only operates on registers
+ * known to be two parts of a 64bit value.
+ */
+static int
+ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
+{
+	u32 low, high;
+	u16 high_addr;
+	int err;
+
+	/* Only operate on registers known to be split into two 32bit
+	 * registers.
+	 */
+	if (!ice_is_64b_phy_reg_e822(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
+			  low_addr);
+		return ICE_ERR_PARAM;
+	}
+
+	err = ice_read_phy_reg_e822(hw, port, low_addr, &low);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read from low register 0x%08x\n, err %d",
+			  low_addr, err);
+		return err;
+	}
+
+	err = ice_read_phy_reg_e822(hw, port, high_addr, &high);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read from high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
+
+	*val = (u64)high << 32 | low;
+
+	return 0;
+}
+
+/**
+ * ice_write_phy_reg_e822 - Write a PHY register
+ * @hw: pointer to the HW struct
+ * @port: PHY port to write to
+ * @offset: PHY register offset to write
+ * @val: The value to write to the register
+ *
+ * Write a PHY register for the given port over the device sideband queue.
+ */
+int
+ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
+{
+	struct ice_sbq_msg_input msg = {0};
+	int err;
+
+	ice_fill_phy_msg_e822(&msg, port, offset);
+	msg.opcode = ice_sbq_msg_wr;
+	msg.data = val;
+
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_write_40b_phy_reg_e822 - Write a 40b value to the PHY
+ * @hw: pointer to the HW struct
+ * @port: port to write to
+ * @low_addr: offset of the low register
+ * @val: 40b value to write
+ *
+ * Write the provided 40b value to the two associated registers by splitting
+ * it up into two chunks, the lower 8 bits and the upper 32 bits.
+ */
+static int
+ice_write_40b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
+{
+	u32 low, high;
+	u16 high_addr;
+	int err;
+
+	/* Only operate on registers known to be split into a lower 8 bit
+	 * register and an upper 32 bit register.
+	 */
+	if (!ice_is_40b_phy_reg_e822(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
+			  low_addr);
+		return ICE_ERR_PARAM;
+	}
+
+	low = (u32)(val & P_REG_40B_LOW_M);
+	high = (u32)(val >> P_REG_40B_HIGH_S);
+
+	err = ice_write_phy_reg_e822(hw, port, low_addr, low);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
+		return err;
+	}
+
+	err = ice_write_phy_reg_e822(hw, port, high_addr, high);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_write_64b_phy_reg_e822 - Write a 64bit value to PHY registers
+ * @hw: pointer to the HW struct
+ * @port: PHY port to read from
+ * @low_addr: offset of the lower register to read from
+ * @val: the contents of the 64bit value to write to PHY
+ *
+ * Write the 64bit value to the two associated 32bit PHY registers. The offset
+ * is always specified as the lower register, and the high address is looked
+ * up. This function only operates on registers known to be two parts of
+ * a 64bit value.
+ */
+static int
+ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
+{
+	u32 low, high;
+	u16 high_addr;
+	int err;
+
+	/* Only operate on registers known to be split into two 32bit
+	 * registers.
+	 */
+	if (!ice_is_64b_phy_reg_e822(low_addr, &high_addr)) {
+		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
+			  low_addr);
+		return ICE_ERR_PARAM;
+	}
+
+	low = lower_32_bits(val);
+	high = upper_32_bits(val);
+
+	err = ice_write_phy_reg_e822(hw, port, low_addr, low);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
+			  low_addr, err);
+		return err;
+	}
+
+	err = ice_write_phy_reg_e822(hw, port, high_addr, high);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
+			  high_addr, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_fill_quad_msg_e822 - Fill message data for quad register access
+ * @msg: the PHY message buffer to fill in
+ * @quad: the quad to access
+ * @offset: the register offset
+ *
+ * Fill a message buffer for accessing a register in a quad shared between
+ * multiple PHYs.
+ */
+static void
+ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
+{
+	u32 addr;
+
+	msg->dest_dev = rmn_0;
+
+	if ((quad % ICE_NUM_QUAD_TYPE) == 0)
+		addr = Q_0_BASE + offset;
+	else
+		addr = Q_1_BASE + offset;
+
+	msg->msg_addr_low = lower_16_bits(addr);
+	msg->msg_addr_high = upper_16_bits(addr);
+}
+
+/**
+ * ice_read_quad_reg_e822 - Read a PHY quad register
+ * @hw: pointer to the HW struct
+ * @quad: quad to read from
+ * @offset: quad register offset to read
+ * @val: on return, the contents read from the quad
+ *
+ * Read a quad register over the device sideband queue. Quad registers are
+ * shared between multiple PHYs.
+ */
+int
+ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
+{
+	struct ice_sbq_msg_input msg = {0};
+	int err;
+
+	if (quad >= ICE_MAX_QUAD)
+		return ICE_ERR_PARAM;
+
+	ice_fill_quad_msg_e822(&msg, quad, offset);
+	msg.opcode = ice_sbq_msg_rd;
+
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
+		return err;
+	}
+
+	*val = msg.data;
+
+	return 0;
+}
+
+/**
+ * ice_write_quad_reg_e822 - Write a PHY quad register
+ * @hw: pointer to the HW struct
+ * @quad: quad to write to
+ * @offset: quad register offset to write
+ * @val: The value to write to the register
+ *
+ * Write a quad register over the device sideband queue. Quad registers are
+ * shared between multiple PHYs.
+ */
+int
+ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
+{
+	struct ice_sbq_msg_input msg = {0};
+	int err;
+
+	if (quad >= ICE_MAX_QUAD)
+		return ICE_ERR_PARAM;
+
+	ice_fill_quad_msg_e822(&msg, quad, offset);
+	msg.opcode = ice_sbq_msg_wr;
+	msg.data = val;
+
+	err = ice_sbq_rw_reg(hw, &msg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_read_phy_tstamp_e822 - Read a PHY timestamp out of the quad block
+ * @hw: pointer to the HW struct
+ * @quad: the quad to read from
+ * @idx: the timestamp index to read
+ * @tstamp: on return, the 40bit timestamp value
+ *
+ * Read a 40bit timestamp value out of the two associated registers in the
+ * quad memory block that is shared between the internal PHYs of the E822
+ * family of devices.
+ */
+static int
+ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
+{
+	u16 lo_addr, hi_addr;
+	u32 lo, hi;
+	int err;
+
+	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
+	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
+
+	err = ice_read_quad_reg_e822(hw, quad, lo_addr, &lo);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
+			  err);
+		return err;
+	}
+
+	err = ice_read_quad_reg_e822(hw, quad, hi_addr, &hi);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* For E822 based internal PHYs, the timestamp is reported with the
+	 * lower 8 bits in the low register, and the upper 32 bits in the high
+	 * register.
+	 */
+	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+
+	return 0;
+}
+
+/**
+ * ice_clear_phy_tstamp_e822 - Clear a timestamp from the quad block
+ * @hw: pointer to the HW struct
+ * @quad: the quad to read from
+ * @idx: the timestamp index to reset
+ *
+ * Clear a timestamp, resetting its valid bit, from the PHY quad block that is
+ * shared between the internal PHYs on the E822 devices.
+ */
+static int
+ice_clear_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx)
+{
+	u16 lo_addr, hi_addr;
+	int err;
+
+	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
+	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
+
+	err = ice_write_quad_reg_e822(hw, quad, lo_addr, 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear low PTP timestamp register, err %d\n",
+			  err);
+		return err;
+	}
+
+	err = ice_write_quad_reg_e822(hw, quad, hi_addr, 0);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to clear high PTP timestamp register, err %d\n",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_set_vernier_wl - Set the window length for vernier calibration
+ * @hw: pointer to the HW struct
+ *
+ * Set the window length used for the vernier port calibration process.
+ */
+static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
+{
+	u8 port;
+
+	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+		int err;
+
+		err = ice_write_phy_reg_e822(hw, port, P_REG_WL,
+					     PTP_VERNIER_WL);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to set vernier window length for port %u, err %d\n",
+				  port, err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_init_phc_e822 - Perform E822 specific PHC initialization
+ * @hw: pointer to HW struct
+ *
+ * Perform PHC initialization steps specific to E822 devices.
+ */
+static int ice_ptp_init_phc_e822(struct ice_hw *hw)
+{
+	u32 regval;
+
+	/* Enable reading switch and PHY registers over the sideband queue */
+#define PF_SB_REM_DEV_CTL_SWITCH_READ BIT(1)
+#define PF_SB_REM_DEV_CTL_PHY0 BIT(2)
+	regval = rd32(hw, PF_SB_REM_DEV_CTL);
+	regval |= (PF_SB_REM_DEV_CTL_SWITCH_READ |
+		   PF_SB_REM_DEV_CTL_PHY0);
+	wr32(hw, PF_SB_REM_DEV_CTL, regval);
+
+	/* Set window length for all the ports */
+	return ice_ptp_set_vernier_wl(hw);
+}
+
+/**
+ * ice_ptp_prep_phy_time_e822 - Prepare PHY port with initial time
+ * @hw: pointer to the HW struct
+ * @time: Time to initialize the PHY port clocks to
+ *
+ * Program the PHY port registers with a new initial time value. The port
+ * clock will be initialized once the driver issues an INIT_TIME sync
+ * command. The time value is the upper 32 bits of the PHY timer, usually in
+ * units of nominal nanoseconds.
+ */
+static int
+ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
+{
+	u64 phy_time;
+	u8 port;
+	int err;
+
+	/* The time represents the upper 32 bits of the PHY timer, so we need
+	 * to shift to account for this when programming.
+	 */
+	phy_time = (u64)time << 32;
+
+	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+		/* Tx case */
+		err = ice_write_64b_phy_reg_e822(hw, port,
+						 P_REG_TX_TIMER_INC_PRE_L,
+						 phy_time);
+		if (err)
+			goto exit_err;
+
+		/* Rx case */
+		err = ice_write_64b_phy_reg_e822(hw, port,
+						 P_REG_RX_TIMER_INC_PRE_L,
+						 phy_time);
+		if (err)
+			goto exit_err;
+	}
+
+	return 0;
+
+exit_err:
+	ice_debug(hw, ICE_DBG_PTP, "Failed to write init time for port %u, err %d\n",
+		  port, err);
+
+	return err;
+}
+
+/**
+ * ice_ptp_prep_port_adj_e822 - Prepare a single port for time adjust
+ * @hw: pointer to HW struct
+ * @port: Port number to be programmed
+ * @time: time in cycles to adjust the port Tx and Rx clocks
+ *
+ * Program the port for an atomic adjustment by writing the Tx and Rx timer
+ * registers. The atomic adjustment won't be completed until the driver issues
+ * an ADJ_TIME command.
+ *
+ * Note that time is not in units of nanoseconds. It is in clock time
+ * including the lower sub-nanosecond portion of the port timer.
+ *
+ * Negative adjustments are supported using 2s complement arithmetic.
+ */
+int
+ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
+{
+	u32 l_time, u_time;
+	int err;
+
+	l_time = lower_32_bits(time);
+	u_time = upper_32_bits(time);
+
+	/* Tx case */
+	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_TIMER_INC_PRE_L,
+				     l_time);
+	if (err)
+		goto exit_err;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_TIMER_INC_PRE_U,
+				     u_time);
+	if (err)
+		goto exit_err;
+
+	/* Rx case */
+	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_TIMER_INC_PRE_L,
+				     l_time);
+	if (err)
+		goto exit_err;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_TIMER_INC_PRE_U,
+				     u_time);
+	if (err)
+		goto exit_err;
+
+	return 0;
+
+exit_err:
+	ice_debug(hw, ICE_DBG_PTP, "Failed to write time adjust for port %u, err %d\n",
+		  port, err);
+	return err;
+}
+
+/**
+ * ice_ptp_prep_phy_adj_e822 - Prep PHY ports for a time adjustment
+ * @hw: pointer to HW struct
+ * @adj: adjustment in nanoseconds
+ *
+ * Prepare the PHY ports for an atomic time adjustment by programming the PHY
+ * Tx and Rx port registers. The actual adjustment is completed by issuing an
+ * ADJ_TIME or ADJ_TIME_AT_TIME sync command.
+ */
+static int
+ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
+{
+	s64 cycles;
+	u8 port;
+
+	/* The port clock supports adjustment of the sub-nanosecond portion of
+	 * the clock. We shift the provided adjustment in nanoseconds to
+	 * calculate the appropriate adjustment to program into the PHY ports.
+	 */
+	if (adj > 0)
+		cycles = (s64)adj << 32;
+	else
+		cycles = -(((s64)-adj) << 32);
+
+	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+		int err;
+
+		err = ice_ptp_prep_port_adj_e822(hw, port, cycles);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_prep_phy_incval_e822 - Prepare PHY ports for time adjustment
+ * @hw: pointer to HW struct
+ * @incval: new increment value to prepare
+ *
+ * Prepare each of the PHY ports for a new increment value by programming the
+ * port's TIMETUS registers. The new increment value will be updated after
+ * issuing an INIT_INCVAL command.
+ */
+static int
+ice_ptp_prep_phy_incval_e822(struct ice_hw *hw, u64 incval)
+{
+	int err;
+	u8 port;
+
+	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+		err = ice_write_40b_phy_reg_e822(hw, port, P_REG_TIMETUS_L,
+						 incval);
+		if (err)
+			goto exit_err;
+	}
+
+	return 0;
+
+exit_err:
+	ice_debug(hw, ICE_DBG_PTP, "Failed to write incval for port %u, err %d\n",
+		  port, err);
+
+	return err;
+}
+
+/**
+ * ice_ptp_read_port_capture - Read a port's local time capture
+ * @hw: pointer to HW struct
+ * @port: Port number to read
+ * @tx_ts: on return, the Tx port time capture
+ * @rx_ts: on return, the Rx port time capture
+ *
+ * Read the port's Tx and Rx local time capture values.
+ *
+ * Note this has no equivalent for the E810 devices.
+ */
+static int
+ice_ptp_read_port_capture(struct ice_hw *hw, u8 port, u64 *tx_ts, u64 *rx_ts)
+{
+	int err;
+
+	/* Tx case */
+	err = ice_read_64b_phy_reg_e822(hw, port, P_REG_TX_CAPTURE_L, tx_ts);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read REG_TX_CAPTURE, err %d\n",
+			  err);
+		return err;
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "tx_init = 0x%016llx\n",
+		  (unsigned long long)*tx_ts);
+
+	/* Rx case */
+	err = ice_read_64b_phy_reg_e822(hw, port, P_REG_RX_CAPTURE_L, rx_ts);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_CAPTURE, err %d\n",
+			  err);
+		return err;
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "rx_init = 0x%016llx\n",
+		  (unsigned long long)*rx_ts);
+
+	return 0;
+}
+
+/**
+ * ice_ptp_one_port_cmd - Prepare a single PHY port for a timer command
+ * @hw: pointer to HW struct
+ * @port: Port to which cmd has to be sent
+ * @cmd: Command to be sent to the port
+ *
+ * Prepare the requested port for an upcoming timer sync command.
+ *
+ * Note there is no equivalent of this operation on E810, as that device
+ * always handles all external PHYs internally.
+ */
+static int
+ice_ptp_one_port_cmd(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd)
+{
+	u32 cmd_val, val;
+	u8 tmr_idx;
+	int err;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+	cmd_val = tmr_idx << SEL_PHY_SRC;
+	switch (cmd) {
+	case INIT_TIME:
+		cmd_val |= PHY_CMD_INIT_TIME;
+		break;
+	case INIT_INCVAL:
+		cmd_val |= PHY_CMD_INIT_INCVAL;
+		break;
+	case ADJ_TIME:
+		cmd_val |= PHY_CMD_ADJ_TIME;
+		break;
+	case READ_TIME:
+		cmd_val |= PHY_CMD_READ_TIME;
+		break;
+	case ADJ_TIME_AT_TIME:
+		cmd_val |= PHY_CMD_ADJ_TIME_AT_TIME;
+		break;
+	}
+
+	/* Tx case */
+	/* Read, modify, write */
+	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_TMR_CMD, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_TMR_CMD, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* Modify necessary bits only and perform write */
+	val &= ~TS_CMD_MASK;
+	val |= cmd_val;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_TMR_CMD, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write back TX_TMR_CMD, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* Rx case */
+	/* Read, modify, write */
+	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_TMR_CMD, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_TMR_CMD, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* Modify necessary bits only and perform write */
+	val &= ~TS_CMD_MASK;
+	val |= cmd_val;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_TMR_CMD, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write back RX_TMR_CMD, err %d\n",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_ptp_port_cmd_e822 - Prepare all ports for a timer command
+ * @hw: pointer to the HW struct
+ * @cmd: timer command to prepare
+ *
+ * Prepare all ports connected to this device for an upcoming timer sync
+ * command.
+ */
+static int
+ice_ptp_port_cmd_e822(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+{
+	u8 port;
+
+	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
+		int err;
+
+		err = ice_ptp_one_port_cmd(hw, port, cmd);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/* E822 Vernier calibration functions
+ *
+ * The following functions are used as part of the vernier calibration of
+ * a port. This calibration increases the precision of the timestamps on the
+ * port.
+ */
+
+/**
+ * ice_phy_get_speed_and_fec_e822 - Get link speed and FEC based on serdes mode
+ * @hw: pointer to HW struct
+ * @port: the port to read from
+ * @link_out: if non-NULL, holds link speed on success
+ * @fec_out: if non-NULL, holds FEC algorithm on success
+ *
+ * Read the serdes data for the PHY port and extract the link speed and FEC
+ * algorithm.
+ */
+static int
+ice_phy_get_speed_and_fec_e822(struct ice_hw *hw, u8 port,
+			       enum ice_ptp_link_spd *link_out,
+			       enum ice_ptp_fec_mode *fec_out)
+{
+	enum ice_ptp_link_spd link;
+	enum ice_ptp_fec_mode fec;
+	u32 serdes;
+	int err;
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_LINK_SPEED, &serdes);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read serdes info\n");
+		return err;
+	}
+
+	/* Determine the FEC algorithm */
+	fec = (enum ice_ptp_fec_mode)P_REG_LINK_SPEED_FEC_MODE(serdes);
+
+	serdes &= P_REG_LINK_SPEED_SERDES_M;
+
+	/* Determine the link speed */
+	if (fec == ICE_PTP_FEC_MODE_RS_FEC) {
+		switch (serdes) {
+		case ICE_PTP_SERDES_25G:
+			link = ICE_PTP_LNK_SPD_25G_RS;
+			break;
+		case ICE_PTP_SERDES_50G:
+			link = ICE_PTP_LNK_SPD_50G_RS;
+			break;
+		case ICE_PTP_SERDES_100G:
+			link = ICE_PTP_LNK_SPD_100G_RS;
+			break;
+		default:
+			return ICE_ERR_OUT_OF_RANGE;
+		}
+	} else {
+		switch (serdes) {
+		case ICE_PTP_SERDES_1G:
+			link = ICE_PTP_LNK_SPD_1G;
+			break;
+		case ICE_PTP_SERDES_10G:
+			link = ICE_PTP_LNK_SPD_10G;
+			break;
+		case ICE_PTP_SERDES_25G:
+			link = ICE_PTP_LNK_SPD_25G;
+			break;
+		case ICE_PTP_SERDES_40G:
+			link = ICE_PTP_LNK_SPD_40G;
+			break;
+		case ICE_PTP_SERDES_50G:
+			link = ICE_PTP_LNK_SPD_50G;
+			break;
+		default:
+			return ICE_ERR_OUT_OF_RANGE;
+		}
+	}
+
+	if (link_out)
+		*link_out = link;
+	if (fec_out)
+		*fec_out = fec;
+
+	return 0;
+}
+
+/**
+ * ice_phy_cfg_lane_e822 - Configure PHY quad for single/multi-lane timestamp
+ * @hw: pointer to HW struct
+ * @port: to configure the quad for
+ */
+static void ice_phy_cfg_lane_e822(struct ice_hw *hw, u8 port)
+{
+	enum ice_ptp_link_spd link_spd;
+	int err;
+	u32 val;
+	u8 quad;
+
+	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, NULL);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to get PHY link speed, err %d\n",
+			  err);
+		return;
+	}
+
+	quad = port / ICE_PORTS_PER_QUAD;
+
+	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEM_GLB_CFG, err %d\n",
+			  err);
+		return;
+	}
+
+	if (link_spd >= ICE_PTP_LNK_SPD_40G)
+		val &= ~Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M;
+	else
+		val |= Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M;
+
+	err = ice_write_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write back TX_MEM_GBL_CFG, err %d\n",
+			  err);
+		return;
+	}
+}
+
+/**
+ * ice_phy_cfg_uix_e822 - Configure Serdes UI to TU conversion for E822
+ * @hw: pointer to the HW structure
+ * @port: the port to configure
+ *
+ * Program the conversion ration of Serdes clock "unit intervals" (UIs) to PHC
+ * hardware clock time units (TUs). That is, determine the number of TUs per
+ * serdes unit interval, and program the UIX registers with this conversion.
+ *
+ * This conversion is used as part of the calibration process when determining
+ * the additional error of a timestamp vs the real time of transmission or
+ * receipt of the packet.
+ *
+ * Hardware uses the number of TUs per 66 UIs, written to the UIX registers
+ * for the two main serdes clock rates, 10G/40G and 25G/100G serdes clocks.
+ *
+ * To calculate the conversion ratio, we use the following facts:
+ *
+ * a) the clock frequency in Hz (cycles per second)
+ * b) the number of TUs per cycle (the increment value of the clock)
+ * c) 1 second per 1 billion nanoseconds
+ * d) the duration of 66 UIs in nanoseconds
+ *
+ * Given these facts, we can use the following table to work out what ratios
+ * to multiply in order to get the number of TUs per 66 UIs:
+ *
+ * cycles |   1 second   | incval (TUs) | nanoseconds
+ * -------+--------------+--------------+-------------
+ * second | 1 billion ns |    cycle     |   66 UIs
+ *
+ * To perform the multiplication using integers without too much loss of
+ * precision, we can take use the following equation:
+ *
+ * (freq * incval * 6600 LINE_UI ) / ( 100 * 1 billion)
+ *
+ * We scale up to using 6600 UI instead of 66 in order to avoid fractional
+ * nanosecond UIs (66 UI at 10G/40G is 6.4 ns)
+ *
+ * The increment value has a maximum expected range of about 34 bits, while
+ * the frequency value is about 29 bits. Multiplying these values shouldn't
+ * overflow the 64 bits. However, we must then further multiply them again by
+ * the Serdes unit interval duration. To avoid overflow here, we split the
+ * overall divide by 1e11 into a divide by 256 (shift down by 8 bits) and
+ * a divide by 390,625,000. This does lose some precision, but avoids
+ * miscalculation due to arithmetic overflow.
+ */
+static int ice_phy_cfg_uix_e822(struct ice_hw *hw, u8 port)
+{
+	u64 cur_freq, clk_incval, tu_per_sec, uix;
+	int err;
+
+	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	clk_incval = ice_ptp_read_src_incval(hw);
+
+	/* Calculate TUs per second divided by 256 */
+	tu_per_sec = (cur_freq * clk_incval) >> 8;
+
+#define LINE_UI_10G_40G 640 /* 6600 UIs is 640 nanoseconds at 10Gb/40Gb */
+#define LINE_UI_25G_100G 256 /* 6600 UIs is 256 nanoseconds at 25Gb/100Gb */
+
+	/* Program the 10Gb/40Gb conversion ratio */
+	uix = div_u64(tu_per_sec * LINE_UI_10G_40G, 390625000);
+
+	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_UIX66_10G_40G_L,
+					 uix);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write UIX66_10G_40G, err %d\n",
+			  err);
+		return err;
+	}
+
+	/* Program the 25Gb/100Gb conversion ratio */
+	uix = div_u64(tu_per_sec * LINE_UI_25G_100G, 390625000);
+
+	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_UIX66_25G_100G_L,
+					 uix);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to write UIX66_25G_100G, err %d\n",
+			  err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_phy_cfg_parpcs_e822 - Configure TUs per PAR/PCS clock cycle
+ * @hw: pointer to the HW struct
+ * @port: port to configure
+ *
+ * Configure the number of TUs for the PAR and PCS clocks used as part of the
+ * timestamp calibration process. This depends on the link speed, as the PHY
+ * uses different markers depending on the speed.
+ *
+ * 1Gb/10Gb/25Gb:
+ * - Tx/Rx PAR/PCS markers
+ *
+ * 25Gb RS:
+ * - Tx/Rx Reed Solomon gearbox PAR/PCS markers
+ *
+ * 40Gb/50Gb:
+ * - Tx/Rx PAR/PCS markers
+ * - Rx Deskew PAR/PCS markers
+ *
+ * 50G RS and 100GB RS:
+ * - Tx/Rx Reed Solomon gearbox PAR/PCS markers
+ * - Rx Deskew PAR/PCS markers
+ * - Tx PAR/PCS markers
+ *
+ * To calculate the conversion, we use the PHC clock frequency (cycles per
+ * second), the increment value (TUs per cycle), and the related PHY clock
+ * frequency to calculate the TUs per unit of the PHY link clock. The
+ * following table shows how the units convert:
+ *
+ * cycles |  TUs  | second
+ * -------+-------+--------
+ * second | cycle | cycles
+ *
+ * For each conversion register, look up the appropriate frequency from the
+ * e822 PAR/PCS table and calculate the TUs per unit of that clock. Program
+ * this to the appropriate register, preparing hardware to perform timestamp
+ * calibration to calculate the total Tx or Rx offset to adjust the timestamp
+ * in order to calibrate for the internal PHY delays.
+ *
+ * Note that the increment value ranges up to ~34 bits, and the clock
+ * frequency is ~29 bits, so multiplying them together should fit within the
+ * 64 bit arithmetic.
+ */
+static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
+{
+	u64 cur_freq, clk_incval, tu_per_sec, phy_tus;
+	enum ice_ptp_link_spd link_spd;
+	enum ice_ptp_fec_mode fec_mode;
+	int err;
+
+	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	if (err)
+		return err;
+
+	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	clk_incval = ice_ptp_read_src_incval(hw);
+
+	/* Calculate TUs per cycle of the PHC clock */
+	tu_per_sec = cur_freq * clk_incval;
+
+	/* For each PHY conversion register, look up the appropriate link
+	 * speed frequency and determine the TUs per that clock's cycle time.
+	 * Split this into a high and low value and then program the
+	 * appropriate register. If that link speed does not use the
+	 * associated register, write zeros to clear it instead.
+	 */
+
+	/* P_REG_PAR_TX_TUS */
+	if (e822_vernier[link_spd].tx_par_clk)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].tx_par_clk);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PAR_TX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_PAR_RX_TUS */
+	if (e822_vernier[link_spd].rx_par_clk)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].rx_par_clk);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PAR_RX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_PCS_TX_TUS */
+	if (e822_vernier[link_spd].tx_pcs_clk)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].tx_pcs_clk);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PCS_TX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_PCS_RX_TUS */
+	if (e822_vernier[link_spd].rx_pcs_clk)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].rx_pcs_clk);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PCS_RX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_DESK_PAR_TX_TUS */
+	if (e822_vernier[link_spd].tx_desk_rsgb_par)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].tx_desk_rsgb_par);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PAR_TX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_DESK_PAR_RX_TUS */
+	if (e822_vernier[link_spd].rx_desk_rsgb_par)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].rx_desk_rsgb_par);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PAR_RX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_DESK_PCS_TX_TUS */
+	if (e822_vernier[link_spd].tx_desk_rsgb_pcs)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].tx_desk_rsgb_pcs);
+	else
+		phy_tus = 0;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PCS_TX_TUS_L,
+					 phy_tus);
+	if (err)
+		return err;
+
+	/* P_REG_DESK_PCS_RX_TUS */
+	if (e822_vernier[link_spd].rx_desk_rsgb_pcs)
+		phy_tus = div_u64(tu_per_sec,
+				  e822_vernier[link_spd].rx_desk_rsgb_pcs);
+	else
+		phy_tus = 0;
+
+	return ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PCS_RX_TUS_L,
+					  phy_tus);
+}
+
+/**
+ * ice_calc_fixed_tx_offset_e822 - Calculated Fixed Tx offset for a port
+ * @hw: pointer to the HW struct
+ * @link_spd: the Link speed to calculate for
+ *
+ * Calculate the fixed offset due to known static latency data.
+ */
+static u64
+ice_calc_fixed_tx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
+{
+	u64 cur_freq, clk_incval, tu_per_sec, fixed_offset;
+
+	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	clk_incval = ice_ptp_read_src_incval(hw);
+
+	/* Calculate TUs per second */
+	tu_per_sec = cur_freq * clk_incval;
+
+	/* Calculate number of TUs to add for the fixed Tx latency. Since the
+	 * latency measurement is in 1/100th of a nanosecond, we need to
+	 * multiply by tu_per_sec and then divide by 1e11. This calculation
+	 * overflows 64 bit integer arithmetic, so break it up into two
+	 * divisions by 1e4 first then by 1e7.
+	 */
+	fixed_offset = div_u64(tu_per_sec, 10000);
+	fixed_offset *= e822_vernier[link_spd].tx_fixed_delay;
+	fixed_offset = div_u64(fixed_offset, 10000000);
+
+	return fixed_offset;
+}
+
+/**
+ * ice_phy_cfg_fixed_tx_offset_e822 - Configure Tx offset for bypass mode
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to configure
+ *
+ * Calculate and program the fixed Tx offset, and indicate that the offset is
+ * ready. This can be used when operating in bypass mode.
+ */
+static int
+ice_phy_cfg_fixed_tx_offset_e822(struct ice_hw *hw, u8 port)
+{
+	enum ice_ptp_link_spd link_spd;
+	enum ice_ptp_fec_mode fec_mode;
+	u64 total_offset;
+	int err;
+
+	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	if (err)
+		return err;
+
+	total_offset = ice_calc_fixed_tx_offset_e822(hw, link_spd);
+
+	/* Program the fixed Tx offset into the P_REG_TOTAL_TX_OFFSET_L
+	 * register, then indicate that the Tx offset is ready. After this,
+	 * timestamps will be enabled.
+	 *
+	 * Note that this skips including the more precise offsets generated
+	 * by the Vernier calibration.
+	 */
+	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_TOTAL_TX_OFFSET_L,
+					 total_offset);
+	if (err)
+		return err;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 1);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_calc_fixed_rx_offset_e822 - Calculated the fixed Rx offset for a port
+ * @hw: pointer to HW struct
+ * @link_spd: The Link speed to calculate for
+ *
+ * Determine the fixed Rx latency for a given link speed.
+ */
+static u64
+ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
+{
+	u64 cur_freq, clk_incval, tu_per_sec, fixed_offset;
+
+	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	clk_incval = ice_ptp_read_src_incval(hw);
+
+	/* Calculate TUs per second */
+	tu_per_sec = cur_freq * clk_incval;
+
+	/* Calculate number of TUs to add for the fixed Rx latency. Since the
+	 * latency measurement is in 1/100th of a nanosecond, we need to
+	 * multiply by tu_per_sec and then divide by 1e11. This calculation
+	 * overflows 64 bit integer arithmetic, so break it up into two
+	 * divisions by 1e4 first then by 1e7.
+	 */
+	fixed_offset = div_u64(tu_per_sec, 10000);
+	fixed_offset *= e822_vernier[link_spd].rx_fixed_delay;
+	fixed_offset = div_u64(fixed_offset, 10000000);
+
+	return fixed_offset;
+}
+
+/**
+ * ice_phy_cfg_fixed_rx_offset_e822 - Configure fixed Rx offset for bypass mode
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to configure
+ *
+ * Calculate and program the fixed Rx offset, and indicate that the offset is
+ * ready. This can be used when operating in bypass mode.
+ */
+static int
+ice_phy_cfg_fixed_rx_offset_e822(struct ice_hw *hw, u8 port)
+{
+	enum ice_ptp_link_spd link_spd;
+	enum ice_ptp_fec_mode fec_mode;
+	u64 total_offset;
+	int err;
+
+	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	if (err)
+		return err;
+
+	total_offset = ice_calc_fixed_rx_offset_e822(hw, link_spd);
+
+	/* Program the fixed Rx offset into the P_REG_TOTAL_RX_OFFSET_L
+	 * register, then indicate that the Rx offset is ready. After this,
+	 * timestamps will be enabled.
+	 *
+	 * Note that this skips including the more precise offsets generated
+	 * by Vernier calibration.
+	 */
+	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_TOTAL_RX_OFFSET_L,
+					 total_offset);
+	if (err)
+		return err;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 1);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/**
+ * ice_read_phy_and_phc_time_e822 - Simultaneously capture PHC and PHY time
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to read
+ * @phy_time: on return, the 64bit PHY timer value
+ * @phc_time: on return, the lower 64bits of PHC time
+ *
+ * Issue a READ_TIME timer command to simultaneously capture the PHY and PHC
+ * timer values.
+ */
+static int
+ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
+			       u64 *phc_time)
+{
+	u64 tx_time, rx_time;
+	u32 zo, lo;
+	u8 tmr_idx;
+	int err;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	/* Prepare the PHC timer for a READ_TIME capture command */
+	ice_ptp_src_cmd(hw, READ_TIME);
+
+	/* Prepare the PHY timer for a READ_TIME capture command */
+	err = ice_ptp_one_port_cmd(hw, port, READ_TIME);
+	if (err)
+		return err;
+
+	/* Issue the sync to start the READ_TIME capture */
+	ice_ptp_exec_tmr_cmd(hw);
+
+	/* Read the captured PHC time from the shadow time registers */
+	zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
+	lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
+	*phc_time = (u64)lo << 32 | zo;
+
+	/* Read the captured PHY time from the PHY shadow registers */
+	err = ice_ptp_read_port_capture(hw, port, &tx_time, &rx_time);
+	if (err)
+		return err;
+
+	/* If the PHY Tx and Rx timers don't match, log a warning message.
+	 * Note that this should not happen in normal circumstances since the
+	 * driver always programs them together.
+	 */
+	if (tx_time != rx_time)
+		dev_warn(ice_hw_to_dev(hw),
+			 "PHY port %u Tx and Rx timers do not match, tx_time 0x%016llX, rx_time 0x%016llX\n",
+			 port, (unsigned long long)tx_time,
+			 (unsigned long long)rx_time);
+
+	*phy_time = tx_time;
+
+	return 0;
+}
+
+/**
+ * ice_sync_phy_timer_e822 - Synchronize the PHY timer with PHC timer
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to synchronize
+ *
+ * Perform an adjustment to ensure that the PHY and PHC timers are in sync.
+ * This is done by issuing a READ_TIME command which triggers a simultaneous
+ * read of the PHY timer and PHC timer. Then we use the difference to
+ * calculate an appropriate 2s complement addition to add to the PHY timer in
+ * order to ensure it reads the same value as the primary PHC timer.
+ */
+static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
+{
+	u64 phc_time, phy_time, difference;
+	int err;
+
+	if (!ice_ptp_lock(hw)) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to acquire PTP semaphore\n");
+		return ICE_ERR_NOT_READY;
+	}
+
+	err = ice_read_phy_and_phc_time_e822(hw, port, &phy_time, &phc_time);
+	if (err)
+		goto err_unlock;
+
+	/* Calculate the amount required to add to the port time in order for
+	 * it to match the PHC time.
+	 *
+	 * Note that the port adjustment is done using 2s complement
+	 * arithmetic. This is convenient since it means that we can simply
+	 * calculate the difference between the PHC time and the port time,
+	 * and it will be interpreted correctly.
+	 */
+	difference = phc_time - phy_time;
+
+	err = ice_ptp_prep_port_adj_e822(hw, port, (s64)difference);
+	if (err)
+		goto err_unlock;
+
+	err = ice_ptp_one_port_cmd(hw, port, ADJ_TIME);
+	if (err)
+		goto err_unlock;
+
+	/* Issue the sync to activate the time adjustment */
+	ice_ptp_exec_tmr_cmd(hw);
+
+	/* Re-capture the timer values to flush the command registers and
+	 * verify that the time was properly adjusted.
+	 */
+	err = ice_read_phy_and_phc_time_e822(hw, port, &phy_time, &phc_time);
+	if (err)
+		goto err_unlock;
+
+	dev_info(ice_hw_to_dev(hw),
+		 "Port %u PHY time synced to PHC: 0x%016llX, 0x%016llX\n",
+		 port, (unsigned long long)phy_time,
+		 (unsigned long long)phc_time);
+
+	ice_ptp_unlock(hw);
+
+	return 0;
+
+err_unlock:
+	ice_ptp_unlock(hw);
+	return err;
+}
+
+/**
+ * ice_stop_phy_timer_e822 - Stop the PHY clock timer
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to stop
+ * @soft_reset: if true, hold the SOFT_RESET bit of P_REG_PS
+ *
+ * Stop the clock of a PHY port. This must be done as part of the flow to
+ * re-calibrate Tx and Rx timestamping offsets whenever the clock time is
+ * initialized or when link speed changes.
+ */
+int
+ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset)
+{
+	int err;
+	u32 val;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 0);
+	if (err)
+		return err;
+
+	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 0);
+	if (err)
+		return err;
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
+	if (err)
+		return err;
+
+	val &= ~P_REG_PS_START_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	val &= ~P_REG_PS_ENA_CLK_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	if (soft_reset) {
+		val |= P_REG_PS_SFT_RESET_M;
+		err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+		if (err)
+			return err;
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "Disabled clock on PHY port %u\n", port);
+
+	return 0;
+}
+
+/**
+ * ice_start_phy_timer_e822 - Start the PHY clock timer
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to start
+ * @bypass: if true, start the PHY in bypass mode
+ *
+ * Start the clock of a PHY port. This must be done as part of the flow to
+ * re-calibrate Tx and Rx timestamping offsets whenever the clock time is
+ * initialized or when link speed changes.
+ *
+ * Bypass mode enables timestamps immediately without waiting for Vernier
+ * calibration to complete. Hardware will still continue taking Vernier
+ * measurements on Tx or Rx of packets, but they will not be applied to
+ * timestamps. Use ice_phy_exit_bypass_e822 to exit bypass mode once hardware
+ * has completed offset calculation.
+ */
+int
+ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass)
+{
+	u32 lo, hi, val;
+	u64 incval;
+	u8 tmr_idx;
+	int err;
+
+	tmr_idx = ice_get_ptp_src_clock_index(hw);
+
+	err = ice_stop_phy_timer_e822(hw, port, false);
+	if (err)
+		return err;
+
+	ice_phy_cfg_lane_e822(hw, port);
+
+	err = ice_phy_cfg_uix_e822(hw, port);
+	if (err)
+		return err;
+
+	err = ice_phy_cfg_parpcs_e822(hw, port);
+	if (err)
+		return err;
+
+	lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
+	hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+	incval = (u64)hi << 32 | lo;
+
+	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_TIMETUS_L, incval);
+	if (err)
+		return err;
+
+	err = ice_ptp_one_port_cmd(hw, port, INIT_INCVAL);
+	if (err)
+		return err;
+
+	ice_ptp_exec_tmr_cmd(hw);
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
+	if (err)
+		return err;
+
+	val |= P_REG_PS_SFT_RESET_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	val |= P_REG_PS_START_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	val &= ~P_REG_PS_SFT_RESET_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	err = ice_ptp_one_port_cmd(hw, port, INIT_INCVAL);
+	if (err)
+		return err;
+
+	ice_ptp_exec_tmr_cmd(hw);
+
+	val |= P_REG_PS_ENA_CLK_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	val |= P_REG_PS_LOAD_OFFSET_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err)
+		return err;
+
+	ice_ptp_exec_tmr_cmd(hw);
+
+	err = ice_sync_phy_timer_e822(hw, port);
+	if (err)
+		return err;
+
+	if (bypass) {
+		val |= P_REG_PS_BYPASS_MODE_M;
+		/* Enter BYPASS mode, enabling timestamps immediately. */
+		err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+		if (err)
+			return err;
+
+		/* Program the fixed Tx offset */
+		err = ice_phy_cfg_fixed_tx_offset_e822(hw, port);
+		if (err)
+			return err;
+
+		/* Program the fixed Rx offset */
+		err = ice_phy_cfg_fixed_rx_offset_e822(hw, port);
+		if (err)
+			return err;
+	}
+
+	ice_debug(hw, ICE_DBG_PTP, "Enabled clock on PHY port %u\n", port);
+
+	return 0;
+}
+
 /* E810 functions
  *
  * The following functions operate on the E810 series devices which use
@@ -392,12 +2161,9 @@ static int ice_ptp_port_cmd_e810(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 
 /* Device agnostic functions
  *
- * The following functions implement useful behavior to hide the differences
- * between E810 and other devices. They call the device-specific
- * implementations where necessary.
- *
- * Currently, the driver only supports E810, but future work will enable
- * support for E822-based devices.
+ * The following functions implement shared behavior common to both E822 and
+ * E810 devices, possibly calling a device specific implementation where
+ * necessary.
  */
 
 /**
@@ -447,42 +2213,6 @@ void ice_ptp_unlock(struct ice_hw *hw)
 	wr32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), 0);
 }
 
-/**
- * ice_ptp_src_cmd - Prepare source timer for a timer command
- * @hw: pointer to HW structure
- * @cmd: Timer command
- *
- * Prepare the source timer for an upcoming timer sync command.
- */
-static void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
-{
-	u32 cmd_val;
-	u8 tmr_idx;
-
-	tmr_idx = ice_get_ptp_src_clock_index(hw);
-	cmd_val = tmr_idx << SEL_CPK_SRC;
-
-	switch (cmd) {
-	case INIT_TIME:
-		cmd_val |= GLTSYN_CMD_INIT_TIME;
-		break;
-	case INIT_INCVAL:
-		cmd_val |= GLTSYN_CMD_INIT_INCVAL;
-		break;
-	case ADJ_TIME:
-		cmd_val |= GLTSYN_CMD_ADJ_TIME;
-		break;
-	case ADJ_TIME_AT_TIME:
-		cmd_val |= GLTSYN_CMD_ADJ_INIT_TIME;
-		break;
-	case READ_TIME:
-		cmd_val |= GLTSYN_CMD_READ_TIME;
-		break;
-	}
-
-	wr32(hw, GLTSYN_CMD, cmd_val);
-}
-
 /**
  * ice_ptp_tmr_cmd - Prepare and trigger a timer sync command
  * @hw: pointer to HW struct
@@ -501,17 +2231,20 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	ice_ptp_src_cmd(hw, cmd);
 
 	/* Next, prepare the ports */
-	err = ice_ptp_port_cmd_e810(hw, cmd);
+	if (ice_is_e810(hw))
+		err = ice_ptp_port_cmd_e810(hw, cmd);
+	else
+		err = ice_ptp_port_cmd_e822(hw, cmd);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY ports for timer command %u, err %d\n",
 			  cmd, err);
 		return err;
 	}
 
-	/* Write the sync command register to drive both source and PHY timer commands
-	 * synchronously
+	/* Write the sync command register to drive both source and PHY timer
+	 * commands synchronously
 	 */
-	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
+	ice_ptp_exec_tmr_cmd(hw);
 
 	return 0;
 }
@@ -543,7 +2276,10 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 
 	/* PHY timers */
 	/* Fill Rx and Tx ports and send msg to PHY */
-	err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
+	if (ice_is_e810(hw))
+		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
+	else
+		err = ice_ptp_prep_phy_time_e822(hw, time & 0xFFFFFFFF);
 	if (err)
 		return err;
 
@@ -575,7 +2311,10 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), lower_32_bits(incval));
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), upper_32_bits(incval));
 
-	err = ice_ptp_prep_phy_incval_e810(hw, incval);
+	if (ice_is_e810(hw))
+		err = ice_ptp_prep_phy_incval_e810(hw, incval);
+	else
+		err = ice_ptp_prep_phy_incval_e822(hw, incval);
 	if (err)
 		return err;
 
@@ -631,7 +2370,10 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	wr32(hw, GLTSYN_SHADJ_L(tmr_idx), 0);
 	wr32(hw, GLTSYN_SHADJ_H(tmr_idx), adj);
 
-	err = ice_ptp_prep_phy_adj_e810(hw, adj);
+	if (ice_is_e810(hw))
+		err = ice_ptp_prep_phy_adj_e810(hw, adj);
+	else
+		err = ice_ptp_prep_phy_adj_e822(hw, adj);
 	if (err)
 		return err;
 
@@ -645,11 +2387,16 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
  * @idx: the timestamp index to read
  * @tstamp: on return, the 40bit timestamp value
  *
- * Read a 40bit timestamp value out of the timestamp block.
+ * Read a 40bit timestamp value out of the timestamp block. For E822 devices,
+ * the block is the quad to read from. For E810 devices, the block is the
+ * logical port to read from.
  */
 int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 {
-	return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
+	if (ice_is_e810(hw))
+		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
+	else
+		return ice_read_phy_tstamp_e822(hw, block, idx, tstamp);
 }
 
 /**
@@ -658,11 +2405,16 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
  * @block: the block to read from
  * @idx: the timestamp index to reset
  *
- * Clear a timestamp, resetting its valid bit, from the timestamp block.
+ * Clear a timestamp, resetting its valid bit, from the timestamp block. For
+ * E822 devices, the block is the quad to clear from. For E810 devices, the
+ * block is the logical port to clear from.
  */
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 {
-	return ice_clear_phy_tstamp_e810(hw, block, idx);
+	if (ice_is_e810(hw))
+		return ice_clear_phy_tstamp_e810(hw, block, idx);
+	else
+		return ice_clear_phy_tstamp_e822(hw, block, idx);
 }
 
 /* E810T SMA functions
@@ -872,5 +2624,8 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	/* Clear event err indications for auxiliary pins */
 	(void)rd32(hw, GLTSYN_STAT(src_idx));
 
-	return ice_ptp_init_phc_e810(hw);
+	if (ice_is_e810(hw))
+		return ice_ptp_init_phc_e810(hw);
+	else
+		return ice_ptp_init_phc_e822(hw);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 06819d91e3bc..2fc82150aa8f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -12,6 +12,92 @@ enum ice_ptp_tmr_cmd {
 	READ_TIME
 };
 
+enum ice_ptp_serdes {
+	ICE_PTP_SERDES_1G,
+	ICE_PTP_SERDES_10G,
+	ICE_PTP_SERDES_25G,
+	ICE_PTP_SERDES_40G,
+	ICE_PTP_SERDES_50G,
+	ICE_PTP_SERDES_100G
+};
+
+enum ice_ptp_link_spd {
+	ICE_PTP_LNK_SPD_1G,
+	ICE_PTP_LNK_SPD_10G,
+	ICE_PTP_LNK_SPD_25G,
+	ICE_PTP_LNK_SPD_25G_RS,
+	ICE_PTP_LNK_SPD_40G,
+	ICE_PTP_LNK_SPD_50G,
+	ICE_PTP_LNK_SPD_50G_RS,
+	ICE_PTP_LNK_SPD_100G_RS,
+	NUM_ICE_PTP_LNK_SPD /* Must be last */
+};
+
+enum ice_ptp_fec_mode {
+	ICE_PTP_FEC_MODE_NONE,
+	ICE_PTP_FEC_MODE_CLAUSE74,
+	ICE_PTP_FEC_MODE_RS_FEC
+};
+
+/**
+ * struct ice_time_ref_info_e822
+ * @pll_freq: Frequency of PLL that drives timer ticks in Hz
+ * @nominal_incval: increment to generate nanoseconds in GLTSYN_TIME_L
+ * @pps_delay: propagation delay of the PPS output signal
+ *
+ * Characteristic information for the various TIME_REF sources possible in the
+ * E822 devices
+ */
+struct ice_time_ref_info_e822 {
+	u64 pll_freq;
+	u64 nominal_incval;
+	u8 pps_delay;
+};
+
+/**
+ * struct ice_vernier_info_e822
+ * @tx_par_clk: Frequency used to calculate P_REG_PAR_TX_TUS
+ * @rx_par_clk: Frequency used to calculate P_REG_PAR_RX_TUS
+ * @tx_pcs_clk: Frequency used to calculate P_REG_PCS_TX_TUS
+ * @rx_pcs_clk: Frequency used to calculate P_REG_PCS_RX_TUS
+ * @tx_desk_rsgb_par: Frequency used to calculate P_REG_DESK_PAR_TX_TUS
+ * @rx_desk_rsgb_par: Frequency used to calculate P_REG_DESK_PAR_RX_TUS
+ * @tx_desk_rsgb_pcs: Frequency used to calculate P_REG_DESK_PCS_TX_TUS
+ * @rx_desk_rsgb_pcs: Frequency used to calculate P_REG_DESK_PCS_RX_TUS
+ * @tx_fixed_delay: Fixed Tx latency measured in 1/100th nanoseconds
+ * @pmd_adj_divisor: Divisor used to calculate PDM alignment adjustment
+ * @rx_fixed_delay: Fixed Rx latency measured in 1/100th nanoseconds
+ *
+ * Table of constants used during as part of the Vernier calibration of the Tx
+ * and Rx timestamps. This includes frequency values used to compute TUs per
+ * PAR/PCS clock cycle, and static delay values measured during hardware
+ * design.
+ *
+ * Note that some values are not used for all link speeds, and the
+ * P_REG_DESK_PAR* registers may represent different clock markers at
+ * different link speeds, either the deskew marker for multi-lane link speeds
+ * or the Reed Solomon gearbox marker for RS-FEC.
+ */
+struct ice_vernier_info_e822 {
+	u32 tx_par_clk;
+	u32 rx_par_clk;
+	u32 tx_pcs_clk;
+	u32 rx_pcs_clk;
+	u32 tx_desk_rsgb_par;
+	u32 rx_desk_rsgb_par;
+	u32 tx_desk_rsgb_pcs;
+	u32 rx_desk_rsgb_pcs;
+	u32 tx_fixed_delay;
+	u32 pmd_adj_divisor;
+	u32 rx_fixed_delay;
+};
+
+/* Table of constants related to possible TIME_REF sources */
+extern const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ];
+
+/* Table of constants for Vernier calibration on E822 */
+extern const struct ice_vernier_info_e822 e822_vernier[NUM_ICE_PTP_LNK_SPD];
+
 /* Increment value to generate nanoseconds in the GLTSYN_TIME_L register for
  * the E810 devices. Based off of a PLL with an 812.5 MHz frequency.
  */
@@ -29,6 +115,57 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp);
 int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx);
 int ice_ptp_init_phc(struct ice_hw *hw);
 
+/* E822 family functions */
+int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
+int ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val);
+int ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
+int ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
+int ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time);
+
+/**
+ * ice_e822_time_ref - Get the current TIME_REF from capabilities
+ * @hw: pointer to the HW structure
+ *
+ * Returns the current TIME_REF from the capabilities structure.
+ */
+static inline enum ice_time_ref_freq ice_e822_time_ref(struct ice_hw *hw)
+{
+	return hw->func_caps.ts_func_info.time_ref;
+}
+
+/**
+ * ice_set_e822_time_ref - Set new TIME_REF
+ * @hw: pointer to the HW structure
+ * @time_ref: new TIME_REF to set
+ *
+ * Update the TIME_REF in the capabilities structure in response to some
+ * change, such as an update to the CGU registers.
+ */
+static inline void
+ice_set_e822_time_ref(struct ice_hw *hw, enum ice_time_ref_freq time_ref)
+{
+	hw->func_caps.ts_func_info.time_ref = time_ref;
+}
+
+static inline u64 ice_e822_pll_freq(enum ice_time_ref_freq time_ref)
+{
+	return e822_time_ref[time_ref].pll_freq;
+}
+
+static inline u64 ice_e822_nominal_incval(enum ice_time_ref_freq time_ref)
+{
+	return e822_time_ref[time_ref].nominal_incval;
+}
+
+static inline u64 ice_e822_pps_delay(enum ice_time_ref_freq time_ref)
+{
+	return e822_time_ref[time_ref].pps_delay;
+}
+
+/* E822 Vernier calibration functions */
+int ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset);
+int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass);
+
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
@@ -38,19 +175,194 @@ bool ice_is_pca9575_present(struct ice_hw *hw);
 
 #define PFTSYN_SEM_BYTES	4
 
+#define ICE_PTP_CLOCK_INDEX_0	0x00
+#define ICE_PTP_CLOCK_INDEX_1	0x01
+
 /* PHY timer commands */
 #define SEL_CPK_SRC	8
+#define SEL_PHY_SRC	3
 
 /* Time Sync command Definitions */
 #define GLTSYN_CMD_INIT_TIME		BIT(0)
 #define GLTSYN_CMD_INIT_INCVAL		BIT(1)
+#define GLTSYN_CMD_INIT_TIME_INCVAL	(BIT(0) | BIT(1))
 #define GLTSYN_CMD_ADJ_TIME		BIT(2)
 #define GLTSYN_CMD_ADJ_INIT_TIME	(BIT(2) | BIT(3))
 #define GLTSYN_CMD_READ_TIME		BIT(7)
 
+/* PHY port Time Sync command definitions */
+#define PHY_CMD_INIT_TIME		BIT(0)
+#define PHY_CMD_INIT_INCVAL		BIT(1)
+#define PHY_CMD_ADJ_TIME		(BIT(0) | BIT(1))
+#define PHY_CMD_ADJ_TIME_AT_TIME	(BIT(0) | BIT(2))
+#define PHY_CMD_READ_TIME		(BIT(0) | BIT(1) | BIT(2))
+
 #define TS_CMD_MASK_E810		0xFF
+#define TS_CMD_MASK			0xF
 #define SYNC_EXEC_CMD			0x3
 
+/* Macros to derive port low and high addresses on both quads */
+#define P_Q0_L(a, p) ((((a) + (0x2000 * (p)))) & 0xFFFF)
+#define P_Q0_H(a, p) ((((a) + (0x2000 * (p)))) >> 16)
+#define P_Q1_L(a, p) ((((a) - (0x2000 * ((p) - ICE_PORTS_PER_QUAD)))) & 0xFFFF)
+#define P_Q1_H(a, p) ((((a) - (0x2000 * ((p) - ICE_PORTS_PER_QUAD)))) >> 16)
+
+/* PHY QUAD register base addresses */
+#define Q_0_BASE			0x94000
+#define Q_1_BASE			0x114000
+
+/* Timestamp memory reset registers */
+#define Q_REG_TS_CTRL			0x618
+#define Q_REG_TS_CTRL_S			0
+#define Q_REG_TS_CTRL_M			BIT(0)
+
+/* Timestamp availability status registers */
+#define Q_REG_TX_MEMORY_STATUS_L	0xCF0
+#define Q_REG_TX_MEMORY_STATUS_U	0xCF4
+
+/* Tx FIFO status registers */
+#define Q_REG_FIFO23_STATUS		0xCF8
+#define Q_REG_FIFO01_STATUS		0xCFC
+#define Q_REG_FIFO02_S			0
+#define Q_REG_FIFO02_M			ICE_M(0x3FF, 0)
+#define Q_REG_FIFO13_S			10
+#define Q_REG_FIFO13_M			ICE_M(0x3FF, 10)
+
+/* Interrupt control Config registers */
+#define Q_REG_TX_MEM_GBL_CFG		0xC08
+#define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_S	0
+#define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M	BIT(0)
+#define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_S	1
+#define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_M	ICE_M(0xFF, 1)
+#define Q_REG_TX_MEM_GBL_CFG_INTR_THR_S	9
+#define Q_REG_TX_MEM_GBL_CFG_INTR_THR_M ICE_M(0x3F, 9)
+#define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_S	15
+#define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M	BIT(15)
+
+/* Tx Timestamp data registers */
+#define Q_REG_TX_MEMORY_BANK_START	0xA00
+
+/* PHY port register base addresses */
+#define P_0_BASE			0x80000
+#define P_4_BASE			0x106000
+
+/* Timestamp init registers */
+#define P_REG_RX_TIMER_INC_PRE_L	0x46C
+#define P_REG_RX_TIMER_INC_PRE_U	0x470
+#define P_REG_TX_TIMER_INC_PRE_L	0x44C
+#define P_REG_TX_TIMER_INC_PRE_U	0x450
+
+/* Timestamp match and adjust target registers */
+#define P_REG_RX_TIMER_CNT_ADJ_L	0x474
+#define P_REG_RX_TIMER_CNT_ADJ_U	0x478
+#define P_REG_TX_TIMER_CNT_ADJ_L	0x454
+#define P_REG_TX_TIMER_CNT_ADJ_U	0x458
+
+/* Timestamp capture registers */
+#define P_REG_RX_CAPTURE_L		0x4D8
+#define P_REG_RX_CAPTURE_U		0x4DC
+#define P_REG_TX_CAPTURE_L		0x4B4
+#define P_REG_TX_CAPTURE_U		0x4B8
+
+/* Timestamp PHY incval registers */
+#define P_REG_TIMETUS_L			0x410
+#define P_REG_TIMETUS_U			0x414
+
+#define P_REG_40B_LOW_M			0xFF
+#define P_REG_40B_HIGH_S		8
+
+/* PHY window length registers */
+#define P_REG_WL			0x40C
+
+#define PTP_VERNIER_WL			0x111ed
+
+/* PHY start registers */
+#define P_REG_PS			0x408
+#define P_REG_PS_START_S		0
+#define P_REG_PS_START_M		BIT(0)
+#define P_REG_PS_BYPASS_MODE_S		1
+#define P_REG_PS_BYPASS_MODE_M		BIT(1)
+#define P_REG_PS_ENA_CLK_S		2
+#define P_REG_PS_ENA_CLK_M		BIT(2)
+#define P_REG_PS_LOAD_OFFSET_S		3
+#define P_REG_PS_LOAD_OFFSET_M		BIT(3)
+#define P_REG_PS_SFT_RESET_S		11
+#define P_REG_PS_SFT_RESET_M		BIT(11)
+
+/* PHY offset valid registers */
+#define P_REG_TX_OV_STATUS		0x4D4
+#define P_REG_TX_OV_STATUS_OV_S		0
+#define P_REG_TX_OV_STATUS_OV_M		BIT(0)
+#define P_REG_RX_OV_STATUS		0x4F8
+#define P_REG_RX_OV_STATUS_OV_S		0
+#define P_REG_RX_OV_STATUS_OV_M		BIT(0)
+
+/* PHY offset ready registers */
+#define P_REG_TX_OR			0x45C
+#define P_REG_RX_OR			0x47C
+
+/* PHY total offset registers */
+#define P_REG_TOTAL_RX_OFFSET_L		0x460
+#define P_REG_TOTAL_RX_OFFSET_U		0x464
+#define P_REG_TOTAL_TX_OFFSET_L		0x440
+#define P_REG_TOTAL_TX_OFFSET_U		0x444
+
+/* Timestamp PAR/PCS registers */
+#define P_REG_UIX66_10G_40G_L		0x480
+#define P_REG_UIX66_10G_40G_U		0x484
+#define P_REG_UIX66_25G_100G_L		0x488
+#define P_REG_UIX66_25G_100G_U		0x48C
+#define P_REG_DESK_PAR_RX_TUS_L		0x490
+#define P_REG_DESK_PAR_RX_TUS_U		0x494
+#define P_REG_DESK_PAR_TX_TUS_L		0x498
+#define P_REG_DESK_PAR_TX_TUS_U		0x49C
+#define P_REG_DESK_PCS_RX_TUS_L		0x4A0
+#define P_REG_DESK_PCS_RX_TUS_U		0x4A4
+#define P_REG_DESK_PCS_TX_TUS_L		0x4A8
+#define P_REG_DESK_PCS_TX_TUS_U		0x4AC
+#define P_REG_PAR_RX_TUS_L		0x420
+#define P_REG_PAR_RX_TUS_U		0x424
+#define P_REG_PAR_TX_TUS_L		0x428
+#define P_REG_PAR_TX_TUS_U		0x42C
+#define P_REG_PCS_RX_TUS_L		0x430
+#define P_REG_PCS_RX_TUS_U		0x434
+#define P_REG_PCS_TX_TUS_L		0x438
+#define P_REG_PCS_TX_TUS_U		0x43C
+#define P_REG_PAR_RX_TIME_L		0x4F0
+#define P_REG_PAR_RX_TIME_U		0x4F4
+#define P_REG_PAR_TX_TIME_L		0x4CC
+#define P_REG_PAR_TX_TIME_U		0x4D0
+#define P_REG_PAR_PCS_RX_OFFSET_L	0x4E8
+#define P_REG_PAR_PCS_RX_OFFSET_U	0x4EC
+#define P_REG_PAR_PCS_TX_OFFSET_L	0x4C4
+#define P_REG_PAR_PCS_TX_OFFSET_U	0x4C8
+#define P_REG_LINK_SPEED		0x4FC
+#define P_REG_LINK_SPEED_SERDES_S	0
+#define P_REG_LINK_SPEED_SERDES_M	ICE_M(0x7, 0)
+#define P_REG_LINK_SPEED_FEC_MODE_S	3
+#define P_REG_LINK_SPEED_FEC_MODE_M	ICE_M(0x3, 3)
+#define P_REG_LINK_SPEED_FEC_MODE(reg)			\
+	(((reg) & P_REG_LINK_SPEED_FEC_MODE_M) >>	\
+	 P_REG_LINK_SPEED_FEC_MODE_S)
+
+/* PHY timestamp related registers */
+#define P_REG_PMD_ALIGNMENT		0x0FC
+#define P_REG_RX_80_TO_160_CNT		0x6FC
+#define P_REG_RX_80_TO_160_CNT_RXCYC_S	0
+#define P_REG_RX_80_TO_160_CNT_RXCYC_M	BIT(0)
+#define P_REG_RX_40_TO_160_CNT		0x8FC
+#define P_REG_RX_40_TO_160_CNT_RXCYC_S	0
+#define P_REG_RX_40_TO_160_CNT_RXCYC_M	ICE_M(0x3, 0)
+
+/* Rx FIFO status registers */
+#define P_REG_RX_OV_FS			0x4F8
+#define P_REG_RX_OV_FS_FIFO_STATUS_S	2
+#define P_REG_RX_OV_FS_FIFO_STATUS_M	ICE_M(0x3FF, 2)
+
+/* Timestamp command registers */
+#define P_REG_TX_TMR_CMD		0x448
+#define P_REG_RX_TMR_CMD		0x468
+
 /* E810 timesync enable register */
 #define ETH_GLTSYN_ENA(_i)		(0x03000348 + ((_i) * 4))
 
@@ -70,9 +382,20 @@ bool ice_is_pca9575_present(struct ice_hw *hw);
 
 /* Timestamp block macros */
 #define TS_LOW_M			0xFFFFFFFF
+#define TS_HIGH_M			0xFF
 #define TS_HIGH_S			32
 
+#define TS_PHY_LOW_M			0xFF
+#define TS_PHY_HIGH_M			0xFFFFFFFF
+#define TS_PHY_HIGH_S			8
+
 #define BYTES_PER_IDX_ADDR_L_U		8
+#define BYTES_PER_IDX_ADDR_L		4
+
+/* Internal PHY timestamp address */
+#define TS_L(a, idx) ((a) + ((idx) * BYTES_PER_IDX_ADDR_L_U))
+#define TS_H(a, idx) ((a) + ((idx) * BYTES_PER_IDX_ADDR_L_U +		\
+			     BYTES_PER_IDX_ADDR_L))
 
 /* External PHY timestamp address */
 #define TS_EXT(a, port, idx) ((a) + (0x1000 * (port)) +			\
-- 
2.31.1.331.gb0c09ab8796f


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

