Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DF5618B13
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:03:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E43C44188A;
	Thu,  3 Nov 2022 22:03:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E43C44188A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512981;
	bh=mU4c61Ik9Y5NXxt7rhL63O1eYVv4TtX7c5V31ny47JU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wXHzIEBS3aR7/844HsJFoPfOUZjmt0cL8pbrpp1kRmNj4IPQAnEIbQAGnWsvejqCo
	 +FNnOjelZtV9InCIS8aOw2s0r5v5nSmAbIj3EyvMbFpJYvwr4Qij6r8WoPxExv9rli
	 LKJFNMMKBp+cJjw82ME1c8Ez1EOc8+5OZwuoHpGOV+l6PXTgoRKq0kCcddCFSQYM0h
	 ucxHGN2vJPLcANo6wNw+tSMlo3WCV6pFCBgyB0F7arBIW70E5ZZCljbF00CDzg5N+9
	 Mc5gYeisE6ELoP7GluFpR02i2AMkRKUKoTqv9fSgcNgbf5ezmvHk0svlDrHB2XuhE6
	 pz5PBOjr9K8MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F9zPZI0Es51A; Thu,  3 Nov 2022 22:03:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1354141859;
	Thu,  3 Nov 2022 22:03:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1354141859
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19C3D1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20B7A81F42
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20B7A81F42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4I898J8WGfn5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6B0F81F95
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6B0F81F95
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307436996"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307436996"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:02:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480306"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480306"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:44 -0700
Message-Id: <20221103220145.1851114-15-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512920; x=1699048920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cNuBi/TtRA3dPscfKMUGpT5AVWkGD97sejyTR0M0lkI=;
 b=i6e81YPEN4ApQ2Xl4xHBWzUONoyY3XlK9TBo4UhpDJw5fCKN1fT+XMQX
 1IBN7jTpDTtQL0f4mdnFlev1k+2jjcaGXowRaHXxmAS1k1sPXNA4BXHqp
 ej1M0e6/xGY8RZxgbFAC3I/rsZRZjtb0vI2VBrTIRZAtfiWukIU6+GWkm
 M0+gTP0M6lQfX+sgm4zBI94kWnsItP2yw1g3F/5f9fjfzRpxk4uZsiUVr
 cwFXhQBuJ6qqvSOlLR7Tk2xaYZhvmFjcmmNCsh3V8YA7Ed49+9/abir5s
 yOS/wxufQXWBpUzLf8q516AJxr/d5zRFanQHa1ikqiOo/osKmJevlmccT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i6e81YPE
Subject: [Intel-wired-lan] [PATCH net-next v2 14/15] ice: make Tx and Rx
 vernier offset calibration independent
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Siddaraju DH <siddaraju.dh@intel.com>

The Tx and Rx calibration and timestamp generation blocks are independent.
However, the ice driver waits until both blocks are ready before
configuring either block.

This can result in delay of configuring one block because we have not yet
received a packet in the other block.

There is no reason to wait to finish programming Tx just because we haven't
received a packet. Similarly there is no reason to wait to program Rx just
because we haven't transmitted a packet.

Instead of checking both offset status before programming either block,
refactor the ice_phy_cfg_tx_offset_e822 and ice_phy_cfg_rx_offset_e822
functions so that they perform their own offset status checks.
Additionally, make them also check the offset ready bit to determine if
the offset values have already been programmed.

Call the individual configure functions directly in
ice_ptp_wait_for_offset_valid. The functions will now correctly check
status, and program the offsets if ready. Once the offset is programmed,
the functions will exit quickly after just checking the offset ready
register.

Remove the ice_phy_calc_vernier_e822 in ice_ptp_hw.c, as well as the offset
valid check functions in ice_ptp.c entirely as they are no longer
necessary.

With this change, the Tx and Rx blocks will each be enabled as soon as
possible without waiting for the other block to complete calibration. This
can enable timestamps faster in setups which have a low rate of transmitted
or received packets. In particular, it can stop a situation where one port
never receives traffic, and thus never finishes calibration of the Tx
block, resulting in continuous faults reported by the ptp4l daemon
application.

Signed-off-by: Siddaraju DH <siddaraju.dh@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes since v1
* Fixed the string alignment for dev_info

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 128 ++++---------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 133 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   3 +-
 3 files changed, 91 insertions(+), 173 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 7c0caf0a566f..42b39b867606 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1219,132 +1219,46 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
 }
 
 /**
- * ice_ptp_check_tx_offset_valid - Check if the Tx PHY offset is valid
- * @port: the PTP port to check
- *
- * Checks whether the Tx offset for the PHY associated with this port is
- * valid. Returns 0 if the offset is valid, and a non-zero error code if it is
- * not.
- */
-static int ice_ptp_check_tx_offset_valid(struct ice_ptp_port *port)
-{
-	struct ice_pf *pf = ptp_port_to_pf(port);
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
-	u32 val;
-	int err;
-
-	err = ice_ptp_check_tx_fifo(port);
-	if (err)
-		return err;
-
-	err = ice_read_phy_reg_e822(hw, port->port_num, P_REG_TX_OV_STATUS,
-				    &val);
-	if (err) {
-		dev_err(dev, "Failed to read TX_OV_STATUS for port %d, err %d\n",
-			port->port_num, err);
-		return -EAGAIN;
-	}
-
-	if (!(val & P_REG_TX_OV_STATUS_OV_M))
-		return -EAGAIN;
-
-	return 0;
-}
-
-/**
- * ice_ptp_check_rx_offset_valid - Check if the Rx PHY offset is valid
- * @port: the PTP port to check
- *
- * Checks whether the Rx offset for the PHY associated with this port is
- * valid. Returns 0 if the offset is valid, and a non-zero error code if it is
- * not.
- */
-static int ice_ptp_check_rx_offset_valid(struct ice_ptp_port *port)
-{
-	struct ice_pf *pf = ptp_port_to_pf(port);
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
-	int err;
-	u32 val;
-
-	err = ice_read_phy_reg_e822(hw, port->port_num, P_REG_RX_OV_STATUS,
-				    &val);
-	if (err) {
-		dev_err(dev, "Failed to read RX_OV_STATUS for port %d, err %d\n",
-			port->port_num, err);
-		return err;
-	}
-
-	if (!(val & P_REG_RX_OV_STATUS_OV_M))
-		return -EAGAIN;
-
-	return 0;
-}
-
-/**
- * ice_ptp_check_offset_valid - Check port offset valid bit
- * @port: Port for which offset valid bit is checked
- *
- * Returns 0 if both Tx and Rx offset are valid, and -EAGAIN if one of the
- * offset is not ready.
- */
-static int ice_ptp_check_offset_valid(struct ice_ptp_port *port)
-{
-	int tx_err, rx_err;
-
-	/* always check both Tx and Rx offset validity */
-	tx_err = ice_ptp_check_tx_offset_valid(port);
-	rx_err = ice_ptp_check_rx_offset_valid(port);
-
-	if (tx_err || rx_err)
-		return -EAGAIN;
-
-	return 0;
-}
-
-/**
- * ice_ptp_wait_for_offset_valid - Check for valid Tx and Rx offsets
+ * ice_ptp_wait_for_offsets - Check for valid Tx and Rx offsets
  * @work: Pointer to the kthread_work structure for this task
  *
- * Check whether both the Tx and Rx offsets are valid for enabling the vernier
- * calibration.
+ * Check whether hardware has completed measuring the Tx and Rx offset values
+ * used to configure and enable vernier timestamp calibration.
  *
- * Once we have valid offsets from hardware, update the total Tx and Rx
- * offsets, and exit bypass mode. This enables more precise timestamps using
- * the extra data measured during the vernier calibration process.
+ * Once the offset in either direction is measured, configure the associated
+ * registers with the calibrated offset values and enable timestamping. The Tx
+ * and Rx directions are configured independently as soon as their associated
+ * offsets are known.
+ *
+ * This function reschedules itself until both Tx and Rx calibration have
+ * completed.
  */
-static void ice_ptp_wait_for_offset_valid(struct kthread_work *work)
+static void ice_ptp_wait_for_offsets(struct kthread_work *work)
 {
 	struct ice_ptp_port *port;
-	int err;
-	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
+	int tx_err;
+	int rx_err;
 
 	port = container_of(work, struct ice_ptp_port, ov_work.work);
 	pf = ptp_port_to_pf(port);
 	hw = &pf->hw;
-	dev = ice_pf_to_dev(pf);
 
 	if (ice_is_reset_in_progress(pf->state))
 		return;
 
-	if (ice_ptp_check_offset_valid(port)) {
-		/* Offsets not ready yet, try again later */
+	tx_err = ice_ptp_check_tx_fifo(port);
+	if (!tx_err)
+		tx_err = ice_phy_cfg_tx_offset_e822(hw, port->port_num);
+	rx_err = ice_phy_cfg_rx_offset_e822(hw, port->port_num);
+	if (tx_err || rx_err) {
+		/* Tx and/or Rx offset not yet configured, try again later */
 		kthread_queue_delayed_work(pf->ptp.kworker,
 					   &port->ov_work,
 					   msecs_to_jiffies(100));
 		return;
 	}
-
-	/* Offsets are valid, so Vernier mode calculations are started */
-	err = ice_phy_calc_vernier_e822(hw, port->port_num);
-	if (err) {
-		dev_warn(dev, "Failed to prepare Vernier mode for PHY port %u, err %d\n",
-			 port->port_num, err);
-		return;
-	}
 }
 
 /**
@@ -2614,7 +2528,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
 	} else {
 		kthread_init_delayed_work(&ptp->port.ov_work,
-					  ice_ptp_wait_for_offset_valid);
+					  ice_ptp_wait_for_offsets);
 		err = ice_ptp_init_tx_e822(pf, &ptp->port.tx,
 					   ptp->port.port_num);
 	}
@@ -2777,7 +2691,7 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 
 	kthread_init_delayed_work(&ptp_port->ov_work,
-				  ice_ptp_wait_for_offset_valid);
+				  ice_ptp_wait_for_offsets);
 	return ice_ptp_init_tx_e822(pf, &ptp_port->tx, ptp_port->port_num);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index d5d51427580a..a38614d21ea8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1741,21 +1741,48 @@ ice_calc_fixed_tx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
  * adjust Tx timestamps by. This is calculated by combining some known static
  * latency along with the Vernier offset computations done by hardware.
  *
- * This function must be called only after the offset registers are valid,
- * i.e. after the Vernier calibration wait has passed, to ensure that the PHY
- * has measured the offset.
+ * This function will not return successfully until the Tx offset calculations
+ * have been completed, which requires waiting until at least one packet has
+ * been transmitted by the device. It is safe to call this function
+ * periodically until calibration succeeds, as it will only program the offset
+ * once.
  *
  * To avoid overflow, when calculating the offset based on the known static
  * latency values, we use measurements in 1/100th of a nanosecond, and divide
  * the TUs per second up front. This avoids overflow while allowing
  * calculation of the adjustment using integer arithmetic.
+ *
+ * Returns zero on success, -EBUSY if the hardware vernier offset
+ * calibration has not completed, or another error code on failure.
  */
-static int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
+int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 {
 	enum ice_ptp_link_spd link_spd;
 	enum ice_ptp_fec_mode fec_mode;
 	u64 total_offset, val;
 	int err;
+	u32 reg;
+
+	/* Nothing to do if we've already programmed the offset */
+	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_OR, &reg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_OR for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (reg)
+		return 0;
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_OV_STATUS, &reg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_OV_STATUS for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (!(reg & P_REG_TX_OV_STATUS_OV_M))
+		return -EBUSY;
 
 	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
 	if (err)
@@ -1809,6 +1836,9 @@ static int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
+	dev_info(ice_hw_to_dev(hw), "Port=%d Tx vernier offset calibration complete\n",
+		 port);
+
 	return 0;
 }
 
@@ -2011,6 +2041,11 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
  * measurements taken in hardware with some data about known fixed delay as
  * well as adjusting for multi-lane alignment delay.
  *
+ * This function will not return successfully until the Rx offset calculations
+ * have been completed, which requires waiting until at least one packet has
+ * been received by the device. It is safe to call this function periodically
+ * until calibration succeeds, as it will only program the offset once.
+ *
  * This function must be called only after the offset registers are valid,
  * i.e. after the Vernier calibration wait has passed, to ensure that the PHY
  * has measured the offset.
@@ -2019,13 +2054,38 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
  * latency values, we use measurements in 1/100th of a nanosecond, and divide
  * the TUs per second up front. This avoids overflow while allowing
  * calculation of the adjustment using integer arithmetic.
+ *
+ * Returns zero on success, -EBUSY if the hardware vernier offset
+ * calibration has not completed, or another error code on failure.
  */
-static int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
+int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 {
 	enum ice_ptp_link_spd link_spd;
 	enum ice_ptp_fec_mode fec_mode;
 	u64 total_offset, pmd, val;
 	int err;
+	u32 reg;
+
+	/* Nothing to do if we've already programmed the offset */
+	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OR, &reg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OR for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (reg)
+		return 0;
+
+	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OV_STATUS, &reg);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OV_STATUS for port %u, err %d\n",
+			  port, err);
+		return err;
+	}
+
+	if (!(reg & P_REG_RX_OV_STATUS_OV_M))
+		return -EBUSY;
 
 	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
 	if (err)
@@ -2086,6 +2146,9 @@ static int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
+	dev_info(ice_hw_to_dev(hw), "Port=%d Rx vernier offset calibration complete\n",
+		 port);
+
 	return 0;
 }
 
@@ -2357,66 +2420,6 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
-/**
- * ice_phy_calc_vernier_e822 - Perform vernier calculations
- * @hw: pointer to the HW struct
- * @port: the PHY port to configure
- *
- * Perform vernier calculations for the Tx and Rx offset. This will enable
- * hardware to include the more precise offset calibrations,
- * increasing precision of the generated timestamps.
- *
- * This cannot be done until hardware has measured the offsets, which requires
- * waiting until at least one packet has been sent and received by the device.
- */
-int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port)
-{
-	int err;
-	u32 val;
-
-	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_OV_STATUS, &val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_OV_STATUS for port %u, err %d\n",
-			  port, err);
-		return err;
-	}
-
-	if (!(val & P_REG_TX_OV_STATUS_OV_M)) {
-		ice_debug(hw, ICE_DBG_PTP, "Tx offset is not yet valid for port %u\n",
-			  port);
-		return -EBUSY;
-	}
-
-	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OV_STATUS, &val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OV_STATUS for port %u, err %d\n",
-			  port, err);
-		return err;
-	}
-
-	if (!(val & P_REG_TX_OV_STATUS_OV_M)) {
-		ice_debug(hw, ICE_DBG_PTP, "Rx offset is not yet valid for port %u\n",
-			  port);
-		return -EBUSY;
-	}
-
-	err = ice_phy_cfg_tx_offset_e822(hw, port);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to program total Tx offset for port %u, err %d\n",
-			  port, err);
-		return err;
-	}
-
-	err = ice_phy_cfg_rx_offset_e822(hw, port);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to program total Rx offset for port %u, err %d\n",
-			  port, err);
-		return err;
-	}
-
-	return 0;
-}
-
 /**
  * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index b781dadf5a39..3b68cb91bd81 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -188,7 +188,8 @@ static inline u64 ice_e822_pps_delay(enum ice_time_ref_freq time_ref)
 /* E822 Vernier calibration functions */
 int ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port);
-int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
