Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C7D6434CE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C02641678;
	Mon,  5 Dec 2022 19:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C02641678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670269998;
	bh=251IuDsAzPVjdrYggbTwU32PFdNAVqKWhVvs5FpKTWY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8jxcyG+C8N4+8vULC4Zomal1lLzbKBcfcgfw+dpgcX6lmmNFTt4vY+BFh3xdB5D2u
	 7GPv/CbWbRV0CqtplNmnz6h7ceXhi37kfAeoYVmhZjcTrIHhSKd3uJKnxu/g121+9j
	 LAwoQGMjycxqvUOE4uLWk7MwdI3gX/09D9rRa6VRdi5hdp+eS9KTfuOgj8vffuFy2/
	 DeKUhtPC4jSh3j+a1qkurmp4fMl/7+/XPkuA1vgZkaK/YjB8V8S4EbVouJYW/Abju3
	 6CV/8Tarl3JfP5UVzLVloW/4Xom4smmAIp7BODZgKc8ox+ZfWn+BE8Ht7AY3bcRCUH
	 eWmoX1jDCZEJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzma5T_SsqKL; Mon,  5 Dec 2022 19:53:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F1F541673;
	Mon,  5 Dec 2022 19:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F1F541673
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3991D1BF865
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 146C8818D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 146C8818D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLCNgynI-FUT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2BDE817B5
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2BDE817B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592364"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592364"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379273"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379273"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:52:59 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:40 -0800
Message-Id: <20221205195253.2475492-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269983; x=1701805983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z1E7+I4XzLDHzyARhSw3i0PzJIxbMSSbF4QeMPXmRH8=;
 b=KFz3e7UBVObSVK+btILV2xtIHBYgP/Vo5iglYpGeb9qGMNCdrRM/zEYr
 xUIWtbghDT79qwRqw9NVq1zeghLZ4XNZqHyGOSJ7AUhPlvDA7FxifFSQA
 Vmwv5EMypzvnHOFk5NG0zuzPZUbi9jY1zslQ1t2STWnncvOKEi6rVgRfp
 X+gddHvsuOROSK+CJ6QKoEmuM4Erh6wkp7/pbdVqPRIPLDbq6x2G3sDcM
 q0m621xiPvWJ69hazaEfYhKJDv8CD/hEEitdnnJhfnOPVLwqDWc2AMxr3
 qxXU44OnvKQSMWMnTLLO1HtcD7ANQbqFH+sU5Pli9BVuJjUUiao5N3Wz9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KFz3e7UB
Subject: [Intel-wired-lan] [PATCH net-next v3 02/15] ice: Remove the E822
 vernier "bypass" logic
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
Cc: Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Milena Olech <milena.olech@intel.com>

The E822 devices support an extended "vernier" calibration which enables
higher precision timestamps by accounting for delays in the PHY, and
compensating for them. These delays are measured by hardware as part of its
vernier calibration logic.

The driver currently starts the PHY in "bypass" mode which skips
the compensation. Then it later attempts to switch from bypass to vernier.
This unfortunately does not work as expected. Instead of properly
compensating for the delays, the hardware continues operating in bypass
without the improved precision expected.

Because we cannot dynamically switch between bypass and vernier mode,
refactor the driver to always operate in vernier mode. This has a slight
downside: Tx timestamp and Rx timestamp requests that occur as the very
first packet set after link up will not complete properly and may be
reported to applications as missing timestamps.

This occurs frequently in test environments where traffic is light or
targeted specifically at testing PTP. However, in practice most
environments will have transmitted or received some data over the network
before such initial requests are made.

Signed-off-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
No changes since v2.

 drivers/net/ethernet/intel/ice/ice_ptp.c    |  10 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 145 +-------------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   4 +-
 3 files changed, 14 insertions(+), 145 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f41f4674cadd..9539d2d37c5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1252,10 +1252,10 @@ static void ice_ptp_wait_for_offset_valid(struct kthread_work *work)
 		return;
 	}
 
-	/* Offsets are valid, so it is safe to exit bypass mode */
-	err = ice_phy_exit_bypass_e822(hw, port->port_num);
+	/* Offsets are valid, so Vernier mode calculations are started */
+	err = ice_phy_calc_vernier_e822(hw, port->port_num);
 	if (err) {
-		dev_warn(dev, "Failed to exit bypass mode for PHY port %u, err %d\n",
+		dev_warn(dev, "Failed to prepare Vernier mode for PHY port %u, err %d\n",
 			 port->port_num, err);
 		return;
 	}
@@ -1320,8 +1320,8 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	ptp_port->tx.calibrating = true;
 	ptp_port->tx_fifo_busy_cnt = 0;
 
-	/* Start the PHY timer in bypass mode */
-	err = ice_start_phy_timer_e822(hw, port, true);
+	/* Start the PHY timer in Vernier mode */
+	err = ice_start_phy_timer_e822(hw, port);
 	if (err)
 		goto out_unlock;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 1f8dd50db524..242c4db65171 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1786,47 +1786,6 @@ static int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
-/**
- * ice_phy_cfg_fixed_tx_offset_e822 - Configure Tx offset for bypass mode
- * @hw: pointer to the HW struct
- * @port: the PHY port to configure
- *
- * Calculate and program the fixed Tx offset, and indicate that the offset is
- * ready. This can be used when operating in bypass mode.
- */
-static int
-ice_phy_cfg_fixed_tx_offset_e822(struct ice_hw *hw, u8 port)
-{
-	enum ice_ptp_link_spd link_spd;
-	enum ice_ptp_fec_mode fec_mode;
-	u64 total_offset;
-	int err;
-
-	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
-	if (err)
-		return err;
-
-	total_offset = ice_calc_fixed_tx_offset_e822(hw, link_spd);
-
-	/* Program the fixed Tx offset into the P_REG_TOTAL_TX_OFFSET_L
-	 * register, then indicate that the Tx offset is ready. After this,
-	 * timestamps will be enabled.
-	 *
-	 * Note that this skips including the more precise offsets generated
-	 * by the Vernier calibration.
-	 */
-	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_TOTAL_TX_OFFSET_L,
-					 total_offset);
-	if (err)
-		return err;
-
-	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 1);
-	if (err)
-		return err;
-
-	return 0;
-}
-
 /**
  * ice_phy_calc_pmd_adj_e822 - Calculate PMD adjustment for Rx
  * @hw: pointer to the HW struct
@@ -2104,47 +2063,6 @@ static int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	return 0;
 }
 
-/**
- * ice_phy_cfg_fixed_rx_offset_e822 - Configure fixed Rx offset for bypass mode
- * @hw: pointer to the HW struct
- * @port: the PHY port to configure
- *
- * Calculate and program the fixed Rx offset, and indicate that the offset is
- * ready. This can be used when operating in bypass mode.
- */
-static int
-ice_phy_cfg_fixed_rx_offset_e822(struct ice_hw *hw, u8 port)
-{
-	enum ice_ptp_link_spd link_spd;
-	enum ice_ptp_fec_mode fec_mode;
-	u64 total_offset;
-	int err;
-
-	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
-	if (err)
-		return err;
-
-	total_offset = ice_calc_fixed_rx_offset_e822(hw, link_spd);
-
-	/* Program the fixed Rx offset into the P_REG_TOTAL_RX_OFFSET_L
-	 * register, then indicate that the Rx offset is ready. After this,
-	 * timestamps will be enabled.
-	 *
-	 * Note that this skips including the more precise offsets generated
-	 * by Vernier calibration.
-	 */
-	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_TOTAL_RX_OFFSET_L,
-					 total_offset);
-	if (err)
-		return err;
-
-	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 1);
-	if (err)
-		return err;
-
-	return 0;
-}
-
 /**
  * ice_read_phy_and_phc_time_e822 - Simultaneously capture PHC and PHY time
  * @hw: pointer to the HW struct
@@ -2323,20 +2241,14 @@ ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset)
  * ice_start_phy_timer_e822 - Start the PHY clock timer
  * @hw: pointer to the HW struct
  * @port: the PHY port to start
- * @bypass: if true, start the PHY in bypass mode
  *
  * Start the clock of a PHY port. This must be done as part of the flow to
  * re-calibrate Tx and Rx timestamping offsets whenever the clock time is
  * initialized or when link speed changes.
  *
- * Bypass mode enables timestamps immediately without waiting for Vernier
- * calibration to complete. Hardware will still continue taking Vernier
- * measurements on Tx or Rx of packets, but they will not be applied to
- * timestamps. Use ice_phy_exit_bypass_e822 to exit bypass mode once hardware
- * has completed offset calculation.
+ * Hardware will take Vernier measurements on Tx or Rx of packets.
  */
-int
-ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass)
+int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 {
 	u32 lo, hi, val;
 	u64 incval;
@@ -2414,44 +2326,24 @@ ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass)
 	if (err)
 		return err;
 
-	if (bypass) {
-		val |= P_REG_PS_BYPASS_MODE_M;
-		/* Enter BYPASS mode, enabling timestamps immediately. */
-		err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
-		if (err)
-			return err;
-
-		/* Program the fixed Tx offset */
-		err = ice_phy_cfg_fixed_tx_offset_e822(hw, port);
-		if (err)
-			return err;
-
-		/* Program the fixed Rx offset */
-		err = ice_phy_cfg_fixed_rx_offset_e822(hw, port);
-		if (err)
-			return err;
-	}
-
 	ice_debug(hw, ICE_DBG_PTP, "Enabled clock on PHY port %u\n", port);
 
 	return 0;
 }
 
 /**
- * ice_phy_exit_bypass_e822 - Exit bypass mode, after vernier calculations
+ * ice_phy_calc_vernier_e822 - Perform vernier calculations
  * @hw: pointer to the HW struct
  * @port: the PHY port to configure
  *
- * After hardware finishes vernier calculations for the Tx and Rx offset, this
- * function can be used to exit bypass mode by updating the total Tx and Rx
- * offsets, and then disabling bypass. This will enable hardware to include
- * the more precise offset calibrations, increasing precision of the generated
- * timestamps.
+ * Perform vernier calculations for the Tx and Rx offset. This will enable
+ * hardware to include the more precise offset calibrations,
+ * increasing precision of the generated timestamps.
  *
  * This cannot be done until hardware has measured the offsets, which requires
  * waiting until at least one packet has been sent and received by the device.
  */
-int ice_phy_exit_bypass_e822(struct ice_hw *hw, u8 port)
+int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port)
 {
 	int err;
 	u32 val;
@@ -2496,29 +2388,6 @@ int ice_phy_exit_bypass_e822(struct ice_hw *hw, u8 port)
 		return err;
 	}
 
-	/* Exit bypass mode now that the offset has been updated */
-	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to read P_REG_PS for port %u, err %d\n",
-			  port, err);
-		return err;
-	}
-
-	if (!(val & P_REG_PS_BYPASS_MODE_M))
-		ice_debug(hw, ICE_DBG_PTP, "Port %u not in bypass mode\n",
-			  port);
-
-	val &= ~P_REG_PS_BYPASS_MODE_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to disable bypass for port %u, err %d\n",
-			  port, err);
-		return err;
-	}
-
-	dev_info(ice_hw_to_dev(hw), "Exiting bypass mode on PHY port %u\n",
-		 port);
-
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 2bda64c76abc..db4f57cb9ec9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -184,8 +184,8 @@ static inline u64 ice_e822_pps_delay(enum ice_time_ref_freq time_ref)
 
 /* E822 Vernier calibration functions */
 int ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset);
-int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port, bool bypass);
-int ice_phy_exit_bypass_e822(struct ice_hw *hw, u8 port);
+int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port);
+int ice_phy_calc_vernier_e822(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
