Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60653F53E9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 01:58:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43B7340360;
	Mon, 23 Aug 2021 23:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9UXmsWMLiHB; Mon, 23 Aug 2021 23:58:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9CD640123;
	Mon, 23 Aug 2021 23:58:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0100D1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E313980EE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fcNmjZlEK41f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CB7480E4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Aug 2021 23:58:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302783977"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="302783977"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 16:58:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="493196626"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2021 16:58:29 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 17:01:57 -0700
Message-Id: <20210824000158.1928482-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v4 12/13] ice: exit bypass mode once
 hardware finishes timestamp calibration
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

From: Jacob Keller <jacob.e.keller@intel.com>

Once the E822 device has sent and received one packet, the hardware
computes the internal delay of the PHY using a process known as Vernier
calibration. This calibration calculates a more accurate offset for the
Tx and Rx timestamps. To make use of this offset, we need to exit the
bypass mode. This cannot be done until the PHY has completed offset
calibration, as indicated by the offset valid bits.

To handle this, introduce a kthread work item which will poll the offset
valid bits every few milliseconds seeing if it is safe to exit bypass
mode.

Once we have finished calibrating the offsets, we can program the total
Tx and Rx offset registers and turn off the bypass bit. This allows the
hardware to include the more precise vernier calibration offset, and
improves the timestamp precision.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 195 ++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp.h    |   4 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 411 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
 4 files changed, 611 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ef2581f08779..edc3d1bf29bb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -479,6 +479,192 @@ static void ice_ptp_reset_ts_memory_quad(struct ice_pf *pf, int quad)
 	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
 }
 
+/**
+ * ice_ptp_check_tx_fifo - Check whether Tx FIFO is in an OK state
+ * @port: PTP port for which Tx FIFO is checked
+ */
+static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
+{
+	int quad = port->port_num / ICE_PORTS_PER_QUAD;
+	int offs = port->port_num % ICE_PORTS_PER_QUAD;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+	u32 val, phy_sts;
+	int err;
+
+	pf = ptp_port_to_pf(port);
+	hw = &pf->hw;
+
+	if (port->tx_fifo_busy_cnt == FIFO_OK)
+		return 0;
+
+	/* need to read FIFO state */
+	if (offs == 0 || offs == 1)
+		err = ice_read_quad_reg_e822(hw, quad, Q_REG_FIFO01_STATUS,
+					     &val);
+	else
+		err = ice_read_quad_reg_e822(hw, quad, Q_REG_FIFO23_STATUS,
+					     &val);
+
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "PTP failed to check port %d Tx FIFO, err %d\n",
+			port->port_num, err);
+		return err;
+	}
+
+	if (offs & 0x1)
+		phy_sts = (val & Q_REG_FIFO13_M) >> Q_REG_FIFO13_S;
+	else
+		phy_sts = (val & Q_REG_FIFO02_M) >> Q_REG_FIFO02_S;
+
+	if (phy_sts & FIFO_EMPTY) {
+		port->tx_fifo_busy_cnt = FIFO_OK;
+		return 0;
+	}
+
+	port->tx_fifo_busy_cnt++;
+
+	dev_dbg(ice_pf_to_dev(pf), "Try %d, port %d FIFO not empty\n",
+		port->tx_fifo_busy_cnt, port->port_num);
+
+	if (port->tx_fifo_busy_cnt == ICE_PTP_FIFO_NUM_CHECKS) {
+		dev_dbg(ice_pf_to_dev(pf),
+			"Port %d Tx FIFO still not empty; resetting quad %d\n",
+			port->port_num, quad);
+		ice_ptp_reset_ts_memory_quad(pf, quad);
+		port->tx_fifo_busy_cnt = FIFO_OK;
+		return 0;
+	}
+
+	return -EAGAIN;
+}
+
+/**
+ * ice_ptp_check_tx_offset_valid - Check if the Tx PHY offset is valid
+ * @port: the PTP port to check
+ *
+ * Checks whether the Tx offset for the PHY associated with this port is
+ * valid. Returns 0 if the offset is valid, and a non-zero error code if it is
+ * not.
+ */
+static int ice_ptp_check_tx_offset_valid(struct ice_ptp_port *port)
+{
+	struct ice_pf *pf = ptp_port_to_pf(port);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	u32 val;
+	int err;
+
+	err = ice_ptp_check_tx_fifo(port);
+	if (err)
+		return err;
+
+	err = ice_read_phy_reg_e822(hw, port->port_num, P_REG_TX_OV_STATUS,
+				    &val);
+	if (err) {
+		dev_err(dev, "Failed to read TX_OV_STATUS for port %d, err %d\n",
+			port->port_num, err);
+		return -EAGAIN;
+	}
+
+	if (!(val & P_REG_TX_OV_STATUS_OV_M))
+		return -EAGAIN;
+
+	return 0;
+}
+
+/**
+ * ice_ptp_check_rx_offset_valid - Check if the Rx PHY offset is valid
+ * @port: the PTP port to check
+ *
+ * Checks whether the Rx offset for the PHY associated with this port is
+ * valid. Returns 0 if the offset is valid, and a non-zero error code if it is
+ * not.
+ */
+static int ice_ptp_check_rx_offset_valid(struct ice_ptp_port *port)
+{
+	struct ice_pf *pf = ptp_port_to_pf(port);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	int err;
+	u32 val;
+
+	err = ice_read_phy_reg_e822(hw, port->port_num, P_REG_RX_OV_STATUS,
+				    &val);
+	if (err) {
+		dev_err(dev, "Failed to read RX_OV_STATUS for port %d, err %d\n",
+			port->port_num, err);
+		return err;
+	}
+
+	if (!(val & P_REG_RX_OV_STATUS_OV_M))
+		return -EAGAIN;
+
+	return 0;
+}
+
+/**
+ * ice_ptp_check_offset_valid - Check port offset valid bit
+ * @port: Port for which offset valid bit is checked
+ *
+ * Returns 0 if both Tx and Rx offset are valid, and -EAGAIN if one of the
+ * offset is not ready.
+ */
+static int ice_ptp_check_offset_valid(struct ice_ptp_port *port)
+{
+	int tx_err, rx_err;
+
+	/* always check both Tx and Rx offset validity */
+	tx_err = ice_ptp_check_tx_offset_valid(port);
+	rx_err = ice_ptp_check_rx_offset_valid(port);
+
+	if (tx_err || rx_err)
+		return -EAGAIN;
+
+	return 0;
+}
+
+/**
+ * ice_ptp_wait_for_offset_valid - Check for valid Tx and Rx offsets
+ * @work: Pointer to the kthread_work structure for this task
+ *
+ * Check whether both the Tx and Rx offsets are valid for enabling the vernier
+ * calibration.
+ *
+ * Once we have valid offsets from hardware, update the total Tx and Rx
+ * offsets, and exit bypass mode. This enables more precise timestamps using
+ * the extra data measured during the vernier calibration process.
+ */
+static void ice_ptp_wait_for_offset_valid(struct kthread_work *work)
+{
+	struct ice_ptp_port *port;
+	int err;
+	struct device *dev;
+	struct ice_pf *pf;
+	struct ice_hw *hw;
+
+	port = container_of(work, struct ice_ptp_port, ov_work.work);
+	pf = ptp_port_to_pf(port);
+	hw = &pf->hw;
+	dev = ice_pf_to_dev(pf);
+
+	if (ice_ptp_check_offset_valid(port)) {
+		/* Offsets not ready yet, try again later */
+		kthread_queue_delayed_work(pf->ptp.kworker,
+					   &port->ov_work,
+					   msecs_to_jiffies(100));
+		return;
+	}
+
+	/* Offsets are valid, so it is safe to exit bypass mode */
+	err = ice_phy_exit_bypass_e822(hw, port->port_num);
+	if (err) {
+		dev_warn(dev, "Failed to exit bypass mode for PHY port %u, err %d\n",
+			 port->port_num, err);
+		return;
+	}
+}
+
 /**
  * ice_ptp_port_phy_stop - Stop timestamping for a PHY port
  * @ptp_port: PTP port to stop
@@ -496,6 +682,8 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 
 	mutex_lock(&ptp_port->ps_lock);
 
+	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
+
 	err = ice_stop_phy_timer_e822(hw, port, true);
 	if (err)
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d down, err %d\n",
@@ -530,8 +718,11 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 
 	mutex_lock(&ptp_port->ps_lock);
 
+	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
+
 	/* temporarily disable Tx timestamps while calibrating PHY offset */
 	ptp_port->tx.calibrating = true;
+	ptp_port->tx_fifo_busy_cnt = 0;
 
 	/* Start the PHY timer in bypass mode */
 	err = ice_start_phy_timer_e822(hw, port, true);
@@ -541,6 +732,8 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	/* Enable Tx timestamps right away */
 	ptp_port->tx.calibrating = false;
 
+	kthread_queue_delayed_work(pf->ptp.kworker, &ptp_port->ov_work, 0);
+
 out_unlock:
 	if (err)
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d up, err %d\n",
@@ -1776,6 +1969,8 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* Initialize PTP port structure */
 	mutex_init(&pf->ptp.port.ps_lock);
 	pf->ptp.port.port_num = pf->hw.pf_id;
+	kthread_init_delayed_work(&pf->ptp.port.ov_work,
+				  ice_ptp_wait_for_offset_valid);
 
 	if (ice_is_e810(hw))
 		ice_ptp_init_tx_e810(pf, &pf->ptp.port.tx);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 9e45b87e0c71..49d7154e627c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -94,14 +94,18 @@ struct ice_ptp_tx {
  * and determine when the port's PHY offset is valid.
  *
  * @tx: Tx timestamp tracking for this port
+ * @ov_work: delayed work task for tracking when PHY offset is valid
  * @ps_lock: mutex used to protect the overall PTP PHY start procedure
  * @link_up: indicates whether the link is up
+ * @tx_fifo_busy_cnt: number of times the Tx FIFO was busy
  * @port_num: the port number this structure represents
  */
 struct ice_ptp_port {
 	struct ice_ptp_tx tx;
+	struct kthread_delayed_work ov_work;
 	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
 	bool link_up;
+	u8 tx_fifo_busy_cnt;
 	u8 port_num;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ccde3db89293..0e1567e4296f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1705,6 +1705,86 @@ ice_calc_fixed_tx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
 	return fixed_offset;
 }
 
+/**
+ * ice_phy_cfg_tx_offset_e822 - Configure total Tx timestamp offset
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to configure
+ *
+ * Program the P_REG_TOTAL_TX_OFFSET register with the total number of TUs to
+ * adjust Tx timestamps by. This is calculated by combining some known static
+ * latency along with the Vernier offset computations done by hardware.
+ *
+ * This function must be called only after the offset registers are valid,
+ * i.e. after the Vernier calibration wait has passed, to ensure that the PHY
+ * has measured the offset.
+ *
+ * To avoid overflow, when calculating the offset based on the known static
+ * latency values, we use measurements in 1/100th of a nanosecond, and divide
+ * the TUs per second up front. This avoids overflow while allowing
+ * calculation of the adjustment using integer arithmetic.
+ */
+static int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
+{
+	enum ice_ptp_link_spd link_spd;
+	enum ice_ptp_fec_mode fec_mode;
+	u64 total_offset, val;
+	int err;
+
+	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	if (err)
+		return err;
+
+	total_offset = ice_calc_fixed_tx_offset_e822(hw, link_spd);
+
+	/* Read the first Vernier offset from the PHY register and add it to
+	 * the total offset.
+	 */
+	if (link_spd == ICE_PTP_LNK_SPD_1G ||
+	    link_spd == ICE_PTP_LNK_SPD_10G ||
+	    link_spd == ICE_PTP_LNK_SPD_25G ||
+	    link_spd == ICE_PTP_LNK_SPD_25G_RS ||
+	    link_spd == ICE_PTP_LNK_SPD_40G ||
+	    link_spd == ICE_PTP_LNK_SPD_50G) {
+		err = ice_read_64b_phy_reg_e822(hw, port,
+						P_REG_PAR_PCS_TX_OFFSET_L,
+						&val);
+		if (err)
+			return err;
+
+		total_offset += val;
+	}
+
+	/* For Tx, we only need to use the second Vernier offset for
+	 * multi-lane link speeds with RS-FEC. The lanes will always be
+	 * aligned.
+	 */
+	if (link_spd == ICE_PTP_LNK_SPD_50G_RS ||
+	    link_spd == ICE_PTP_LNK_SPD_100G_RS) {
+		err = ice_read_64b_phy_reg_e822(hw, port,
+						P_REG_PAR_TX_TIME_L,
+						&val);
+		if (err)
+			return err;
+
+		total_offset += val;
+	}
+
+	/* Now that the total offset has been calculated, program it to the
+	 * PHY and indicate that the Tx offset is ready. After this,
+	 * timestamps will be enabled.
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
 /**
  * ice_phy_cfg_fixed_tx_offset_e822 - Configure Tx offset for bypass mode
  * @hw: pointer to the HW struct
@@ -1746,6 +1826,164 @@ ice_phy_cfg_fixed_tx_offset_e822(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
+/**
+ * ice_phy_calc_pmd_adj_e822 - Calculate PMD adjustment for Rx
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to adjust for
+ * @link_spd: the current link speed of the PHY
+ * @fec_mode: the current FEC mode of the PHY
+ * @pmd_adj: on return, the amount to adjust the Rx total offset by
+ *
+ * Calculates the adjustment to Rx timestamps due to PMD alignment in the PHY.
+ * This varies by link speed and FEC mode. The value calculated accounts for
+ * various delays caused when receiving a packet.
+ */
+static int
+ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
+			  enum ice_ptp_link_spd link_spd,
+			  enum ice_ptp_fec_mode fec_mode, u64 *pmd_adj)
+{
+	u64 cur_freq, clk_incval, tu_per_sec, mult, adj;
+	u8 pmd_align;
+	u32 val;
+	int err;
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_PMD_ALIGNMENT, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read PMD alignment, err %d\n",
+			  err);
+		return err;
+	}
+
+	pmd_align = (u8)val;
+
+	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	clk_incval = ice_ptp_read_src_incval(hw);
+
+	/* Calculate TUs per second */
+	tu_per_sec = cur_freq * clk_incval;
+
+	/* The PMD alignment adjustment measurement depends on the link speed,
+	 * and whether FEC is enabled. For each link speed, the alignment
+	 * adjustment is calculated by dividing a value by the length of
+	 * a Time Unit in nanoseconds.
+	 *
+	 * 1G: align == 4 ? 10 * 0.8 : (align + 6 % 10) * 0.8
+	 * 10G: align == 65 ? 0 : (align * 0.1 * 32/33)
+	 * 10G w/FEC: align * 0.1 * 32/33
+	 * 25G: align == 65 ? 0 : (align * 0.4 * 32/33)
+	 * 25G w/FEC: align * 0.4 * 32/33
+	 * 40G: align == 65 ? 0 : (align * 0.1 * 32/33)
+	 * 40G w/FEC: align * 0.1 * 32/33
+	 * 50G: align == 65 ? 0 : (align * 0.4 * 32/33)
+	 * 50G w/FEC: align * 0.8 * 32/33
+	 *
+	 * For RS-FEC, if align is < 17 then we must also add 1.6 * 32/33.
+	 *
+	 * To allow for calculating this value using integer arithmetic, we
+	 * instead start with the number of TUs per second, (inverse of the
+	 * length of a Time Unit in nanoseconds), multiply by a value based
+	 * on the PMD alignment register, and then divide by the right value
+	 * calculated based on the table above. To avoid integer overflow this
+	 * division is broken up into a step of dividing by 125 first.
+	 */
+	if (link_spd == ICE_PTP_LNK_SPD_1G) {
+		if (pmd_align == 4)
+			mult = 10;
+		else
+			mult = (pmd_align + 6) % 10;
+	} else if (link_spd == ICE_PTP_LNK_SPD_10G ||
+		   link_spd == ICE_PTP_LNK_SPD_25G ||
+		   link_spd == ICE_PTP_LNK_SPD_40G ||
+		   link_spd == ICE_PTP_LNK_SPD_50G) {
+		/* If Clause 74 FEC, always calculate PMD adjust */
+		if (pmd_align != 65 || fec_mode == ICE_PTP_FEC_MODE_CLAUSE74)
+			mult = pmd_align;
+		else
+			mult = 0;
+	} else if (link_spd == ICE_PTP_LNK_SPD_25G_RS ||
+		   link_spd == ICE_PTP_LNK_SPD_50G_RS ||
+		   link_spd == ICE_PTP_LNK_SPD_100G_RS) {
+		if (pmd_align < 17)
+			mult = pmd_align + 40;
+		else
+			mult = pmd_align;
+	} else {
+		ice_debug(hw, ICE_DBG_PTP, "Unknown link speed %d, skipping PMD adjustment\n",
+			  link_spd);
+		mult = 0;
+	}
+
+	/* In some cases, there's no need to adjust for the PMD alignment */
+	if (!mult) {
+		*pmd_adj = 0;
+		return 0;
+	}
+
+	/* Calculate the adjustment by multiplying TUs per second by the
+	 * appropriate multiplier and divisor. To avoid overflow, we first
+	 * divide by 125, and then handle remaining divisor based on the link
+	 * speed pmd_adj_divisor value.
+	 */
+	adj = div_u64(tu_per_sec, 125);
+	adj *= mult;
+	adj = div_u64(adj, e822_vernier[link_spd].pmd_adj_divisor);
+
+	/* Finally, for 25G-RS and 50G-RS, a further adjustment for the Rx
+	 * cycle count is necessary.
+	 */
+	if (link_spd == ICE_PTP_LNK_SPD_25G_RS) {
+		u64 cycle_adj;
+		u8 rx_cycle;
+
+		err = ice_read_phy_reg_e822(hw, port, P_REG_RX_40_TO_160_CNT,
+					    &val);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to read 25G-RS Rx cycle count, err %d\n",
+				  err);
+			return err;
+		}
+
+		rx_cycle = val & P_REG_RX_40_TO_160_CNT_RXCYC_M;
+		if (rx_cycle) {
+			mult = (4 - rx_cycle) * 40;
+
+			cycle_adj = div_u64(tu_per_sec, 125);
+			cycle_adj *= mult;
+			cycle_adj = div_u64(cycle_adj, e822_vernier[link_spd].pmd_adj_divisor);
+
+			adj += cycle_adj;
+		}
+	} else if (link_spd == ICE_PTP_LNK_SPD_50G_RS) {
+		u64 cycle_adj;
+		u8 rx_cycle;
+
+		err = ice_read_phy_reg_e822(hw, port, P_REG_RX_80_TO_160_CNT,
+					    &val);
+		if (err) {
+			ice_debug(hw, ICE_DBG_PTP, "Failed to read 50G-RS Rx cycle count, err %d\n",
+				  err);
+			return err;
+		}
+
+		rx_cycle = val & P_REG_RX_80_TO_160_CNT_RXCYC_M;
+		if (rx_cycle) {
+			mult = rx_cycle * 40;
+
+			cycle_adj = div_u64(tu_per_sec, 125);
+			cycle_adj *= mult;
+			cycle_adj = div_u64(cycle_adj, e822_vernier[link_spd].pmd_adj_divisor);
+
+			adj += cycle_adj;
+		}
+	}
+
+	/* Return the calculated adjustment */
+	*pmd_adj = adj;
+
+	return 0;
+}
+
 /**
  * ice_calc_fixed_rx_offset_e822 - Calculated the fixed Rx offset for a port
  * @hw: pointer to HW struct
@@ -1777,6 +2015,94 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
 	return fixed_offset;
 }
 
+/**
+ * ice_phy_cfg_rx_offset_e822 - Configure total Rx timestamp offset
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to configure
+ *
+ * Program the P_REG_TOTAL_RX_OFFSET register with the number of Time Units to
+ * adjust Rx timestamps by. This combines calculations from the Vernier offset
+ * measurements taken in hardware with some data about known fixed delay as
+ * well as adjusting for multi-lane alignment delay.
+ *
+ * This function must be called only after the offset registers are valid,
+ * i.e. after the Vernier calibration wait has passed, to ensure that the PHY
+ * has measured the offset.
+ *
+ * To avoid overflow, when calculating the offset based on the known static
+ * latency values, we use measurements in 1/100th of a nanosecond, and divide
+ * the TUs per second up front. This avoids overflow while allowing
+ * calculation of the adjustment using integer arithmetic.
+ */
+static int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
+{
+	enum ice_ptp_link_spd link_spd;
+	enum ice_ptp_fec_mode fec_mode;
+	u64 total_offset, pmd, val;
+	int err;
+
+	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	if (err)
+		return err;
+
+	total_offset = ice_calc_fixed_rx_offset_e822(hw, link_spd);
+
+	/* Read the first Vernier offset from the PHY register and add it to
+	 * the total offset.
+	 */
+	err = ice_read_64b_phy_reg_e822(hw, port,
+					P_REG_PAR_PCS_RX_OFFSET_L,
+					&val);
+	if (err)
+		return err;
+
+	total_offset += val;
+
+	/* For Rx, all multi-lane link speeds include a second Vernier
+	 * calibration, because the lanes might not be aligned.
+	 */
+	if (link_spd == ICE_PTP_LNK_SPD_40G ||
+	    link_spd == ICE_PTP_LNK_SPD_50G ||
+	    link_spd == ICE_PTP_LNK_SPD_50G_RS ||
+	    link_spd == ICE_PTP_LNK_SPD_100G_RS) {
+		err = ice_read_64b_phy_reg_e822(hw, port,
+						P_REG_PAR_RX_TIME_L,
+						&val);
+		if (err)
+			return err;
+
+		total_offset += val;
+	}
+
+	/* In addition, Rx must account for the PMD alignment */
+	err = ice_phy_calc_pmd_adj_e822(hw, port, link_spd, fec_mode, &pmd);
+	if (err)
+		return err;
+
+	/* For RS-FEC, this adjustment adds delay, but for other modes, it
+	 * subtracts delay.
+	 */
+	if (fec_mode == ICE_PTP_FEC_MODE_RS_FEC)
+		total_offset += pmd;
+	else
+		total_offset -= pmd;
+
+	/* Now that the total offset has been calculated, program it to the
+	 * PHY and indicate that the Rx offset is ready. After this,
+	 * timestamps will be enabled.
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
 /**
  * ice_phy_cfg_fixed_rx_offset_e822 - Configure fixed Rx offset for bypass mode
  * @hw: pointer to the HW struct
@@ -2110,6 +2436,91 @@ ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass)
 	return 0;
 }
 
+/**
+ * ice_phy_exit_bypass_e822 - Exit bypass mode, after vernier calculations
+ * @hw: pointer to the HW struct
+ * @port: the PHY port to configure
+ *
+ * After hardware finishes vernier calculations for the Tx and Rx offset, this
+ * function can be used to exit bypass mode by updating the total Tx and Rx
+ * offsets, and then disabling bypass. This will enable hardware to include
+ * the more precise offset calibrations, increasing precision of the generated
+ * timestamps.
+ *
+ * This cannot be done until hardware has measured the offsets, which requires
+ * waiting until at least one packet has been sent and received by the device.
+ */
+int ice_phy_exit_bypass_e822(struct ice_hw *hw, u8 port)
+{
+	int err;
+	u32 val;
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_OV_STATUS, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_OV_STATUS for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (!(val & P_REG_TX_OV_STATUS_OV_M)) {
+		ice_debug(hw, ICE_DBG_PTP, "Tx offset is not yet valid for port %u\n",
+			  port);
+		return ICE_ERR_NOT_READY;
+	}
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OV_STATUS, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OV_STATUS for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (!(val & P_REG_TX_OV_STATUS_OV_M)) {
+		ice_debug(hw, ICE_DBG_PTP, "Rx offset is not yet valid for port %u\n",
+			  port);
+		return ICE_ERR_NOT_READY;
+	}
+
+	err = ice_phy_cfg_tx_offset_e822(hw, port);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to program total Tx offset for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	err = ice_phy_cfg_rx_offset_e822(hw, port);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to program total Rx offset for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	/* Exit bypass mode now that the offset has been updated */
+	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read P_REG_PS for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (!(val & P_REG_PS_BYPASS_MODE_M))
+		ice_debug(hw, ICE_DBG_PTP, "Port %u not in bypass mode\n",
+			  port);
+
+	val &= ~P_REG_PS_BYPASS_MODE_M;
+	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to disable bypass for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	dev_info(ice_hw_to_dev(hw), "Exiting bypass mode on PHY port %u\n",
+		 port);
+
+	return 0;
+}
+
 /* E810 functions
  *
  * The following functions operate on the E810 series devices which use
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 82d932f32cd7..5fd3c673480c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -185,6 +185,7 @@ static inline u64 ice_e822_pps_delay(enum ice_time_ref_freq time_ref)
 /* E822 Vernier calibration functions */
 int ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass);
+int ice_phy_exit_bypass_e822(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
