Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D827F7300
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50BE582170;
	Fri, 24 Nov 2023 11:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50BE582170
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700826375;
	bh=x7tXWMTgQelxsNG7Njd6wHAcC4SKMtlp861FAf7aMbw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jwEwaJLbOsduWJ61wz0mxXesVVuuywkY/Hcp0/qMXRQAP5Sin/u0Fxn31/HHF2rN0
	 NI/2cXzKOeHDKNWSezqG0GtgScMQNxpw48tWO/Zg4XWEqDrSrh6iO9GpA8QLjXFYr9
	 nVMKIB2POCSSL42oZ4C29hkszO1xt7bYlVLccmevDxdAJofzo5wY5XX6I03c/Asmjl
	 NMLCEQRcw7Ji6V64BJy6vx0/c+jPxT2W1dVyaQVv5Y29NY+IbnyAS4qkN5I8Lo8alS
	 Vo4V9hCPTRCWj17uqQcBbTEgK28F3PA4XymBCNQG3O6IkdIPWuBvOtk0h7j9gXCqA8
	 5H+MJA56Oc2cQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Chd8q5HiCJIu; Fri, 24 Nov 2023 11:46:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CD398215A;
	Fri, 24 Nov 2023 11:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CD398215A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 276F61BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2E5461537
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2E5461537
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8ly4k2CmxpC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:46:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A73D61536
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A73D61536
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5630880"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; 
   d="scan'208";a="5630880"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 03:46:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; 
   d="scan'208";a="8952659"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa002.jf.intel.com with ESMTP; 24 Nov 2023 03:46:00 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Nov 2023 12:45:55 +0100
Message-Id: <20231124114555.253412-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700826363; x=1732362363;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QqIxEmRhtKQ9RVyybduvqqNO6RaZXz2hnNiRMdMn/nk=;
 b=brfZ65p5PBKHGL/2GW5wwVEndYOYaR/Y/r+ze8f7UmMZZ/AnFU5D62aW
 pdKsblLLGyIj+rm4qfk8OVpT+KKM0kFIWDJMVPxFgib9OopVymJt/Tp2H
 CBxJEWarWdeADMrq/VrKxk/bPrjA55QeUH+JgbxJkBr+pnp1Dh4GH+bcl
 jIkXfbdcpgqNUk8+LzVsC2u2IupauKN/+NOg6yJI3FXQNa77CH7vwvB4b
 y9aHEd+67mkYkEQv//9AxM3DX/thnt8bYTqwXk7XfIhIWPlp7NkWs26RH
 38sCQ51MsQdYqIAxdcOyMx97autlyGWws3rTKieZA5VsQvWgczzw4LFig
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=brfZ65p5
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Rename E822 to E82X
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When code is applicable for both E822 and E823 devices, rename it from
E822 to E82X.
ICE_PHY_PER_NAC_E822 was unused, so just remove it.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  48 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   2 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  12 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 444 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  48 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   7 +-
 6 files changed, 280 insertions(+), 281 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 03fc9c7cd21a..e9e59f4b5580 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -7,7 +7,7 @@
 
 #define E810_OUT_PROP_DELAY_NS 1
 
-#define UNKNOWN_INCVAL_E822 0x100000000ULL
+#define UNKNOWN_INCVAL_E82X 0x100000000ULL
 
 static const struct ptp_pin_desc ice_pin_desc_e810t[] = {
 	/* name    idx   func         chan */
@@ -877,7 +877,7 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 }
 
 /**
- * ice_ptp_init_tx_e822 - Initialize tracking for Tx timestamps
+ * ice_ptp_init_tx_e82x - Initialize tracking for Tx timestamps
  * @pf: Board private structure
  * @tx: the Tx tracking structure to initialize
  * @port: the port this structure tracks
@@ -888,11 +888,11 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
  * registers into chunks based on the port number.
  */
 static int
-ice_ptp_init_tx_e822(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
+ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 {
 	tx->block = port / ICE_PORTS_PER_QUAD;
-	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E822;
-	tx->len = INDEX_PER_PORT_E822;
+	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E82X;
+	tx->len = INDEX_PER_PORT_E82X;
 	tx->verify_cached = 0;
 
 	return ice_ptp_alloc_tx_tracker(tx);
@@ -1095,10 +1095,10 @@ static u64 ice_base_incval(struct ice_pf *pf)
 
 	if (ice_is_e810(hw))
 		incval = ICE_PTP_NOMINAL_INCVAL_E810;
-	else if (ice_e822_time_ref(hw) < NUM_ICE_TIME_REF_FREQ)
-		incval = ice_e822_nominal_incval(ice_e822_time_ref(hw));
+	else if (ice_e82x_time_ref(hw) < NUM_ICE_TIME_REF_FREQ)
+		incval = ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
 	else
-		incval = UNKNOWN_INCVAL_E822;
+		incval = UNKNOWN_INCVAL_E82X;
 
 	dev_dbg(ice_pf_to_dev(pf), "PTP: using base increment value of 0x%016llx\n",
 		incval);
@@ -1127,10 +1127,10 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
 
 	/* need to read FIFO state */
 	if (offs == 0 || offs == 1)
-		err = ice_read_quad_reg_e822(hw, quad, Q_REG_FIFO01_STATUS,
+		err = ice_read_quad_reg_e82x(hw, quad, Q_REG_FIFO01_STATUS,
 					     &val);
 	else
-		err = ice_read_quad_reg_e822(hw, quad, Q_REG_FIFO23_STATUS,
+		err = ice_read_quad_reg_e82x(hw, quad, Q_REG_FIFO23_STATUS,
 					     &val);
 
 	if (err) {
@@ -1158,7 +1158,7 @@ static int ice_ptp_check_tx_fifo(struct ice_ptp_port *port)
 		dev_dbg(ice_pf_to_dev(pf),
 			"Port %d Tx FIFO still not empty; resetting quad %d\n",
 			port->port_num, quad);
-		ice_ptp_reset_ts_memory_quad_e822(hw, quad);
+		ice_ptp_reset_ts_memory_quad_e82x(hw, quad);
 		port->tx_fifo_busy_cnt = FIFO_OK;
 		return 0;
 	}
@@ -1203,8 +1203,8 @@ static void ice_ptp_wait_for_offsets(struct kthread_work *work)
 
 	tx_err = ice_ptp_check_tx_fifo(port);
 	if (!tx_err)
-		tx_err = ice_phy_cfg_tx_offset_e822(hw, port->port_num);
-	rx_err = ice_phy_cfg_rx_offset_e822(hw, port->port_num);
+		tx_err = ice_phy_cfg_tx_offset_e82x(hw, port->port_num);
+	rx_err = ice_phy_cfg_rx_offset_e82x(hw, port->port_num);
 	if (tx_err || rx_err) {
 		/* Tx and/or Rx offset not yet configured, try again later */
 		kthread_queue_delayed_work(pf->ptp.kworker,
@@ -1233,7 +1233,7 @@ ice_ptp_port_phy_stop(struct ice_ptp_port *ptp_port)
 
 	kthread_cancel_delayed_work_sync(&ptp_port->ov_work);
 
-	err = ice_stop_phy_timer_e822(hw, port, true);
+	err = ice_stop_phy_timer_e82x(hw, port, true);
 	if (err)
 		dev_err(ice_pf_to_dev(pf), "PTP failed to set PHY port %d down, err %d\n",
 			port, err);
@@ -1276,7 +1276,7 @@ ice_ptp_port_phy_restart(struct ice_ptp_port *ptp_port)
 	ptp_port->tx_fifo_busy_cnt = 0;
 
 	/* Start the PHY timer in Vernier mode */
-	err = ice_start_phy_timer_e822(hw, port);
+	err = ice_start_phy_timer_e82x(hw, port);
 	if (err)
 		goto out_unlock;
 
@@ -1325,7 +1325,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 	case ICE_PHY_E810:
 		/* Do not reconfigure E810 PHY */
 		return;
-	case ICE_PHY_E822:
+	case ICE_PHY_E82X:
 		ice_ptp_port_phy_restart(ptp_port);
 		return;
 	default:
@@ -1351,7 +1351,7 @@ static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
 	ice_ptp_reset_ts_memory(hw);
 
 	for (quad = 0; quad < ICE_MAX_QUAD; quad++) {
-		err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG,
+		err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG,
 					     &val);
 		if (err)
 			break;
@@ -1365,7 +1365,7 @@ static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
 			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
 		}
 
-		err = ice_write_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG,
+		err = ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG,
 					      val);
 		if (err)
 			break;
@@ -1603,7 +1603,7 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	if (ice_is_e810(hw))
 		start_time -= E810_OUT_PROP_DELAY_NS;
 	else
-		start_time -= ice_e822_pps_delay(ice_e822_time_ref(hw));
+		start_time -= ice_e82x_pps_delay(ice_e82x_time_ref(hw));
 
 	/* 2. Write TARGET time */
 	wr32(hw, GLTSYN_TGT_L(chan, tmr_idx), lower_32_bits(start_time));
@@ -1842,7 +1842,7 @@ ice_ptp_settime64(struct ptp_clock_info *info, const struct timespec64 *ts)
 	ice_ptp_enable_all_clkout(pf);
 
 	/* Recalibrate and re-enable timestamp blocks for E822/E823 */
-	if (hw->phy_model == ICE_PHY_E822)
+	if (hw->phy_model == ICE_PHY_E82X)
 		ice_ptp_restart_all_phy(pf);
 exit:
 	if (err) {
@@ -2574,7 +2574,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 	} else {
 		kthread_init_delayed_work(&ptp->port.ov_work,
 					  ice_ptp_wait_for_offsets);
-		err = ice_ptp_init_tx_e822(pf, &ptp->port.tx,
+		err = ice_ptp_init_tx_e82x(pf, &ptp->port.tx,
 					   ptp->port.port_num);
 	}
 	if (err)
@@ -2947,11 +2947,11 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	switch (hw->phy_model) {
 	case ICE_PHY_E810:
 		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
-	case ICE_PHY_E822:
+	case ICE_PHY_E82X:
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
 
-		return ice_ptp_init_tx_e822(pf, &ptp_port->tx,
+		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
 					    ptp_port->port_num);
 	default:
 		return -ENODEV;
@@ -3038,7 +3038,7 @@ static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
 static void ice_ptp_init_tx_interrupt_mode(struct ice_pf *pf)
 {
 	switch (pf->hw.phy_model) {
-	case ICE_PHY_E822:
+	case ICE_PHY_E82X:
 		/* E822 based PHY has the clock owner process the interrupt
 		 * for all ports.
 		 */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 06a330867fc9..d79281061409 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -147,7 +147,7 @@ struct ice_ptp_tx {
 
 /* Quad and port information for initializing timestamp blocks */
 #define INDEX_PER_QUAD			64
-#define INDEX_PER_PORT_E822		16
+#define INDEX_PER_PORT_E82X		16
 #define INDEX_PER_PORT_E810		64
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 4109aa3b2fcd..2c4dab0c48ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -9,17 +9,17 @@
  */
 /* Constants defined for the PTP 1588 clock hardware. */
 
-/* struct ice_time_ref_info_e822
+/* struct ice_time_ref_info_e82x
  *
  * E822 hardware can use different sources as the reference for the PTP
  * hardware clock. Each clock has different characteristics such as a slightly
  * different frequency, etc.
  *
  * This lookup table defines several constants that depend on the current time
- * reference. See the struct ice_time_ref_info_e822 for information about the
+ * reference. See the struct ice_time_ref_info_e82x for information about the
  * meaning of each constant.
  */
-const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ] = {
+const struct ice_time_ref_info_e82x e822_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
 	{
 		/* pll_freq */
@@ -81,7 +81,7 @@ const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ] = {
 	},
 };
 
-const struct ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
+const struct ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 	/* ICE_TIME_REF_FREQ_25_000 -> 25 MHz */
 	{
 		/* refclk_pre_div */
@@ -155,7 +155,7 @@ const struct ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
 	},
 };
 
-/* struct ice_vernier_info_e822
+/* struct ice_vernier_info_e82x
  *
  * E822 hardware calibrates the delay of the timestamp indication from the
  * actual packet transmission or reception during the initialization of the
@@ -168,7 +168,7 @@ const struct ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ] = {
  * used by this link speed, and that the register should be cleared by writing
  * 0. Other values specify the clock frequency in Hz.
  */
-const struct ice_vernier_info_e822 e822_vernier[NUM_ICE_PTP_LNK_SPD] = {
+const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD] = {
 	/* ICE_PTP_LNK_SPD_1G */
 	{
 		/* tx_par_clk */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index a00b55e14aac..187ce9b54e1a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -284,19 +284,19 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
  */
 
 /**
- * ice_fill_phy_msg_e822 - Fill message data for a PHY register access
+ * ice_fill_phy_msg_e82x - Fill message data for a PHY register access
  * @msg: the PHY message buffer to fill in
  * @port: the port to access
  * @offset: the register offset
  */
 static void
-ice_fill_phy_msg_e822(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
+ice_fill_phy_msg_e82x(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
 {
 	int phy_port, phy, quadtype;
 
-	phy_port = port % ICE_PORTS_PER_PHY_E822;
-	phy = port / ICE_PORTS_PER_PHY_E822;
-	quadtype = (port / ICE_PORTS_PER_QUAD) % ICE_QUADS_PER_PHY_E822;
+	phy_port = port % ICE_PORTS_PER_PHY_E82X;
+	phy = port / ICE_PORTS_PER_PHY_E82X;
+	quadtype = (port / ICE_PORTS_PER_QUAD) % ICE_QUADS_PER_PHY_E82X;
 
 	if (quadtype == 0) {
 		msg->msg_addr_low = P_Q0_L(P_0_BASE + offset, phy_port);
@@ -315,7 +315,7 @@ ice_fill_phy_msg_e822(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
 }
 
 /**
- * ice_is_64b_phy_reg_e822 - Check if this is a 64bit PHY register
+ * ice_is_64b_phy_reg_e82x - Check if this is a 64bit PHY register
  * @low_addr: the low address to check
  * @high_addr: on return, contains the high address of the 64bit register
  *
@@ -323,7 +323,7 @@ ice_fill_phy_msg_e822(struct ice_sbq_msg_input *msg, u8 port, u16 offset)
  * represented as two 32bit registers. If it is, return the appropriate high
  * register offset to use.
  */
-static bool ice_is_64b_phy_reg_e822(u16 low_addr, u16 *high_addr)
+static bool ice_is_64b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
 {
 	switch (low_addr) {
 	case P_REG_PAR_PCS_TX_OFFSET_L:
@@ -368,7 +368,7 @@ static bool ice_is_64b_phy_reg_e822(u16 low_addr, u16 *high_addr)
 }
 
 /**
- * ice_is_40b_phy_reg_e822 - Check if this is a 40bit PHY register
+ * ice_is_40b_phy_reg_e82x - Check if this is a 40bit PHY register
  * @low_addr: the low address to check
  * @high_addr: on return, contains the high address of the 40bit value
  *
@@ -377,7 +377,7 @@ static bool ice_is_64b_phy_reg_e822(u16 low_addr, u16 *high_addr)
  * upper 32 bits in the high register. If it is, return the appropriate high
  * register offset to use.
  */
-static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
+static bool ice_is_40b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
 {
 	switch (low_addr) {
 	case P_REG_TIMETUS_L:
@@ -413,7 +413,7 @@ static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
 }
 
 /**
- * ice_read_phy_reg_e822 - Read a PHY register
+ * ice_read_phy_reg_e82x - Read a PHY register
  * @hw: pointer to the HW struct
  * @port: PHY port to read from
  * @offset: PHY register offset to read
@@ -422,12 +422,12 @@ static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
  * Read a PHY register for the given port over the device sideband queue.
  */
 static int
-ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
+ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 {
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	ice_fill_phy_msg_e822(&msg, port, offset);
+	ice_fill_phy_msg_e82x(&msg, port, offset);
 	msg.opcode = ice_sbq_msg_rd;
 
 	err = ice_sbq_rw_reg(hw, &msg);
@@ -443,7 +443,7 @@ ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 }
 
 /**
- * ice_read_64b_phy_reg_e822 - Read a 64bit value from PHY registers
+ * ice_read_64b_phy_reg_e82x - Read a 64bit value from PHY registers
  * @hw: pointer to the HW struct
  * @port: PHY port to read from
  * @low_addr: offset of the lower register to read from
@@ -455,7 +455,7 @@ ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
  * known to be two parts of a 64bit value.
  */
 static int
-ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
+ice_read_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
 {
 	u32 low, high;
 	u16 high_addr;
@@ -464,20 +464,20 @@ ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
 	/* Only operate on registers known to be split into two 32bit
 	 * registers.
 	 */
-	if (!ice_is_64b_phy_reg_e822(low_addr, &high_addr)) {
+	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
 		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
 			  low_addr);
 		return -EINVAL;
 	}
 
-	err = ice_read_phy_reg_e822(hw, port, low_addr, &low);
+	err = ice_read_phy_reg_e82x(hw, port, low_addr, &low);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read from low register 0x%08x\n, err %d",
 			  low_addr, err);
 		return err;
 	}
 
-	err = ice_read_phy_reg_e822(hw, port, high_addr, &high);
+	err = ice_read_phy_reg_e82x(hw, port, high_addr, &high);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read from high register 0x%08x\n, err %d",
 			  high_addr, err);
@@ -490,7 +490,7 @@ ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
 }
 
 /**
- * ice_write_phy_reg_e822 - Write a PHY register
+ * ice_write_phy_reg_e82x - Write a PHY register
  * @hw: pointer to the HW struct
  * @port: PHY port to write to
  * @offset: PHY register offset to write
@@ -499,12 +499,12 @@ ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
  * Write a PHY register for the given port over the device sideband queue.
  */
 static int
-ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
+ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 {
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	ice_fill_phy_msg_e822(&msg, port, offset);
+	ice_fill_phy_msg_e82x(&msg, port, offset);
 	msg.opcode = ice_sbq_msg_wr;
 	msg.data = val;
 
@@ -519,7 +519,7 @@ ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 }
 
 /**
- * ice_write_40b_phy_reg_e822 - Write a 40b value to the PHY
+ * ice_write_40b_phy_reg_e82x - Write a 40b value to the PHY
  * @hw: pointer to the HW struct
  * @port: port to write to
  * @low_addr: offset of the low register
@@ -529,7 +529,7 @@ ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
  * it up into two chunks, the lower 8 bits and the upper 32 bits.
  */
 static int
-ice_write_40b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
+ice_write_40b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 {
 	u32 low, high;
 	u16 high_addr;
@@ -538,7 +538,7 @@ ice_write_40b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 	/* Only operate on registers known to be split into a lower 8 bit
 	 * register and an upper 32 bit register.
 	 */
-	if (!ice_is_40b_phy_reg_e822(low_addr, &high_addr)) {
+	if (!ice_is_40b_phy_reg_e82x(low_addr, &high_addr)) {
 		ice_debug(hw, ICE_DBG_PTP, "Invalid 40b register addr 0x%08x\n",
 			  low_addr);
 		return -EINVAL;
@@ -547,14 +547,14 @@ ice_write_40b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 	low = (u32)(val & P_REG_40B_LOW_M);
 	high = (u32)(val >> P_REG_40B_HIGH_S);
 
-	err = ice_write_phy_reg_e822(hw, port, low_addr, low);
+	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
 			  low_addr, err);
 		return err;
 	}
 
-	err = ice_write_phy_reg_e822(hw, port, high_addr, high);
+	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
 			  high_addr, err);
@@ -565,7 +565,7 @@ ice_write_40b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 }
 
 /**
- * ice_write_64b_phy_reg_e822 - Write a 64bit value to PHY registers
+ * ice_write_64b_phy_reg_e82x - Write a 64bit value to PHY registers
  * @hw: pointer to the HW struct
  * @port: PHY port to read from
  * @low_addr: offset of the lower register to read from
@@ -577,7 +577,7 @@ ice_write_40b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
  * a 64bit value.
  */
 static int
-ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
+ice_write_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 {
 	u32 low, high;
 	u16 high_addr;
@@ -586,7 +586,7 @@ ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 	/* Only operate on registers known to be split into two 32bit
 	 * registers.
 	 */
-	if (!ice_is_64b_phy_reg_e822(low_addr, &high_addr)) {
+	if (!ice_is_64b_phy_reg_e82x(low_addr, &high_addr)) {
 		ice_debug(hw, ICE_DBG_PTP, "Invalid 64b register addr 0x%08x\n",
 			  low_addr);
 		return -EINVAL;
@@ -595,14 +595,14 @@ ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 	low = lower_32_bits(val);
 	high = upper_32_bits(val);
 
-	err = ice_write_phy_reg_e822(hw, port, low_addr, low);
+	err = ice_write_phy_reg_e82x(hw, port, low_addr, low);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
 			  low_addr, err);
 		return err;
 	}
 
-	err = ice_write_phy_reg_e822(hw, port, high_addr, high);
+	err = ice_write_phy_reg_e82x(hw, port, high_addr, high);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
 			  high_addr, err);
@@ -613,7 +613,7 @@ ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
 }
 
 /**
- * ice_fill_quad_msg_e822 - Fill message data for quad register access
+ * ice_fill_quad_msg_e82x - Fill message data for quad register access
  * @msg: the PHY message buffer to fill in
  * @quad: the quad to access
  * @offset: the register offset
@@ -622,7 +622,7 @@ ice_write_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 val)
  * multiple PHYs.
  */
 static int
-ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
+ice_fill_quad_msg_e82x(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 {
 	u32 addr;
 
@@ -631,7 +631,7 @@ ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 
 	msg->dest_dev = rmn_0;
 
-	if ((quad % ICE_QUADS_PER_PHY_E822) == 0)
+	if ((quad % ICE_QUADS_PER_PHY_E82X) == 0)
 		addr = Q_0_BASE + offset;
 	else
 		addr = Q_1_BASE + offset;
@@ -643,7 +643,7 @@ ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
 }
 
 /**
- * ice_read_quad_reg_e822 - Read a PHY quad register
+ * ice_read_quad_reg_e82x - Read a PHY quad register
  * @hw: pointer to the HW struct
  * @quad: quad to read from
  * @offset: quad register offset to read
@@ -653,12 +653,12 @@ ice_fill_quad_msg_e822(struct ice_sbq_msg_input *msg, u8 quad, u16 offset)
  * shared between multiple PHYs.
  */
 int
-ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
+ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 {
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	err = ice_fill_quad_msg_e822(&msg, quad, offset);
+	err = ice_fill_quad_msg_e82x(&msg, quad, offset);
 	if (err)
 		return err;
 
@@ -677,7 +677,7 @@ ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 }
 
 /**
- * ice_write_quad_reg_e822 - Write a PHY quad register
+ * ice_write_quad_reg_e82x - Write a PHY quad register
  * @hw: pointer to the HW struct
  * @quad: quad to write to
  * @offset: quad register offset to write
@@ -687,12 +687,12 @@ ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
  * shared between multiple PHYs.
  */
 int
-ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
+ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 {
 	struct ice_sbq_msg_input msg = {0};
 	int err;
 
-	err = ice_fill_quad_msg_e822(&msg, quad, offset);
+	err = ice_fill_quad_msg_e82x(&msg, quad, offset);
 	if (err)
 		return err;
 
@@ -710,7 +710,7 @@ ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 }
 
 /**
- * ice_read_phy_tstamp_e822 - Read a PHY timestamp out of the quad block
+ * ice_read_phy_tstamp_e82x - Read a PHY timestamp out of the quad block
  * @hw: pointer to the HW struct
  * @quad: the quad to read from
  * @idx: the timestamp index to read
@@ -721,7 +721,7 @@ ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
  * family of devices.
  */
 static int
-ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
+ice_read_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 {
 	u16 lo_addr, hi_addr;
 	u32 lo, hi;
@@ -730,14 +730,14 @@ ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 	lo_addr = (u16)TS_L(Q_REG_TX_MEMORY_BANK_START, idx);
 	hi_addr = (u16)TS_H(Q_REG_TX_MEMORY_BANK_START, idx);
 
-	err = ice_read_quad_reg_e822(hw, quad, lo_addr, &lo);
+	err = ice_read_quad_reg_e82x(hw, quad, lo_addr, &lo);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read low PTP timestamp register, err %d\n",
 			  err);
 		return err;
 	}
 
-	err = ice_read_quad_reg_e822(hw, quad, hi_addr, &hi);
+	err = ice_read_quad_reg_e82x(hw, quad, hi_addr, &hi);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read high PTP timestamp register, err %d\n",
 			  err);
@@ -754,7 +754,7 @@ ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
 }
 
 /**
- * ice_clear_phy_tstamp_e822 - Clear a timestamp from the quad block
+ * ice_clear_phy_tstamp_e82x - Clear a timestamp from the quad block
  * @hw: pointer to the HW struct
  * @quad: the quad to read from
  * @idx: the timestamp index to reset
@@ -770,18 +770,18 @@ ice_read_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx, u64 *tstamp)
  *
  * To directly clear the contents of the timestamp block entirely, discarding
  * all timestamp data at once, software should instead use
- * ice_ptp_reset_ts_memory_quad_e822().
+ * ice_ptp_reset_ts_memory_quad_e82x().
  *
  * This function should only be called on an idx whose bit is set according to
  * ice_get_phy_tx_tstamp_ready().
  */
 static int
-ice_clear_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx)
+ice_clear_phy_tstamp_e82x(struct ice_hw *hw, u8 quad, u8 idx)
 {
 	u64 unused_tstamp;
 	int err;
 
-	err = ice_read_phy_tstamp_e822(hw, quad, idx, &unused_tstamp);
+	err = ice_read_phy_tstamp_e82x(hw, quad, idx, &unused_tstamp);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read the timestamp register for quad %u, idx %u, err %d\n",
 			  quad, idx, err);
@@ -792,33 +792,33 @@ ice_clear_phy_tstamp_e822(struct ice_hw *hw, u8 quad, u8 idx)
 }
 
 /**
- * ice_ptp_reset_ts_memory_quad_e822 - Clear all timestamps from the quad block
+ * ice_ptp_reset_ts_memory_quad_e82x - Clear all timestamps from the quad block
  * @hw: pointer to the HW struct
  * @quad: the quad to read from
  *
  * Clear all timestamps from the PHY quad block that is shared between the
  * internal PHYs on the E822 devices.
  */
-void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad)
+void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad)
 {
-	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
-	ice_write_quad_reg_e822(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
+	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
+	ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~(u32)Q_REG_TS_CTRL_M);
 }
 
 /**
- * ice_ptp_reset_ts_memory_e822 - Clear all timestamps from all quad blocks
+ * ice_ptp_reset_ts_memory_e82x - Clear all timestamps from all quad blocks
  * @hw: pointer to the HW struct
  */
-static void ice_ptp_reset_ts_memory_e822(struct ice_hw *hw)
+static void ice_ptp_reset_ts_memory_e82x(struct ice_hw *hw)
 {
 	unsigned int quad;
 
 	for (quad = 0; quad < ICE_MAX_QUAD; quad++)
-		ice_ptp_reset_ts_memory_quad_e822(hw, quad);
+		ice_ptp_reset_ts_memory_quad_e82x(hw, quad);
 }
 
 /**
- * ice_read_cgu_reg_e822 - Read a CGU register
+ * ice_read_cgu_reg_e82x - Read a CGU register
  * @hw: pointer to the HW struct
  * @addr: Register address to read
  * @val: storage for register value read
@@ -827,7 +827,7 @@ static void ice_ptp_reset_ts_memory_e822(struct ice_hw *hw)
  * applicable to E822 devices.
  */
 static int
-ice_read_cgu_reg_e822(struct ice_hw *hw, u32 addr, u32 *val)
+ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
 {
 	struct ice_sbq_msg_input cgu_msg;
 	int err;
@@ -850,7 +850,7 @@ ice_read_cgu_reg_e822(struct ice_hw *hw, u32 addr, u32 *val)
 }
 
 /**
- * ice_write_cgu_reg_e822 - Write a CGU register
+ * ice_write_cgu_reg_e82x - Write a CGU register
  * @hw: pointer to the HW struct
  * @addr: Register address to write
  * @val: value to write into the register
@@ -859,7 +859,7 @@ ice_read_cgu_reg_e822(struct ice_hw *hw, u32 addr, u32 *val)
  * applicable to E822 devices.
  */
 static int
-ice_write_cgu_reg_e822(struct ice_hw *hw, u32 addr, u32 val)
+ice_write_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input cgu_msg;
 	int err;
@@ -925,7 +925,7 @@ static const char *ice_clk_src_str(u8 clk_src)
 }
 
 /**
- * ice_cfg_cgu_pll_e822 - Configure the Clock Generation Unit
+ * ice_cfg_cgu_pll_e82x - Configure the Clock Generation Unit
  * @hw: pointer to the HW struct
  * @clk_freq: Clock frequency to program
  * @clk_src: Clock source to select (TIME_REF, or TCX0)
@@ -934,7 +934,7 @@ static const char *ice_clk_src_str(u8 clk_src)
  * time reference, enabling the PLL which drives the PTP hardware clock.
  */
 static int
-ice_cfg_cgu_pll_e822(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
+ice_cfg_cgu_pll_e82x(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
 		     enum ice_clk_src clk_src)
 {
 	union tspll_ro_bwm_lf bwm_lf;
@@ -963,15 +963,15 @@ ice_cfg_cgu_pll_e822(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
 		return -EINVAL;
 	}
 
-	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD9, &dw9.val);
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD24, &dw24.val);
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
 	if (err)
 		return err;
 
-	err = ice_read_cgu_reg_e822(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 	if (err)
 		return err;
 
@@ -986,43 +986,43 @@ ice_cfg_cgu_pll_e822(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
 	if (dw24.field.ts_pll_enable) {
 		dw24.field.ts_pll_enable = 0;
 
-		err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD24, dw24.val);
+		err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
 		if (err)
 			return err;
 	}
 
 	/* Set the frequency */
 	dw9.field.time_ref_freq_sel = clk_freq;
-	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD9, dw9.val);
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
 	if (err)
 		return err;
 
 	/* Configure the TS PLL feedback divisor */
-	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD19, &dw19.val);
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD19, &dw19.val);
 	if (err)
 		return err;
 
 	dw19.field.tspll_fbdiv_intgr = e822_cgu_params[clk_freq].feedback_div;
 	dw19.field.tspll_ndivratio = 1;
 
-	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD19, dw19.val);
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD19, dw19.val);
 	if (err)
 		return err;
 
 	/* Configure the TS PLL post divisor */
-	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD22, &dw22.val);
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD22, &dw22.val);
 	if (err)
 		return err;
 
 	dw22.field.time1588clk_div = e822_cgu_params[clk_freq].post_pll_div;
 	dw22.field.time1588clk_sel_div2 = 0;
 
-	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD22, dw22.val);
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD22, dw22.val);
 	if (err)
 		return err;
 
 	/* Configure the TS PLL pre divisor and clock source */
-	err = ice_read_cgu_reg_e822(hw, NAC_CGU_DWORD24, &dw24.val);
+	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD24, &dw24.val);
 	if (err)
 		return err;
 
@@ -1030,21 +1030,21 @@ ice_cfg_cgu_pll_e822(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
 	dw24.field.tspll_fbdiv_frac = e822_cgu_params[clk_freq].frac_n_div;
 	dw24.field.time_ref_sel = clk_src;
 
-	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD24, dw24.val);
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
 	if (err)
 		return err;
 
 	/* Finally, enable the PLL */
 	dw24.field.ts_pll_enable = 1;
 
-	err = ice_write_cgu_reg_e822(hw, NAC_CGU_DWORD24, dw24.val);
+	err = ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD24, dw24.val);
 	if (err)
 		return err;
 
 	/* Wait to verify if the PLL locks */
 	usleep_range(1000, 5000);
 
-	err = ice_read_cgu_reg_e822(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_RO_BWM_LF, &bwm_lf.val);
 	if (err)
 		return err;
 
@@ -1064,18 +1064,18 @@ ice_cfg_cgu_pll_e822(struct ice_hw *hw, enum ice_time_ref_freq clk_freq,
 }
 
 /**
- * ice_init_cgu_e822 - Initialize CGU with settings from firmware
+ * ice_init_cgu_e82x - Initialize CGU with settings from firmware
  * @hw: pointer to the HW structure
  *
  * Initialize the Clock Generation Unit of the E822 device.
  */
-static int ice_init_cgu_e822(struct ice_hw *hw)
+static int ice_init_cgu_e82x(struct ice_hw *hw)
 {
 	struct ice_ts_func_info *ts_info = &hw->func_caps.ts_func_info;
 	union tspll_cntr_bist_settings cntr_bist;
 	int err;
 
-	err = ice_read_cgu_reg_e822(hw, TSPLL_CNTR_BIST_SETTINGS,
+	err = ice_read_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
 				    &cntr_bist.val);
 	if (err)
 		return err;
@@ -1084,7 +1084,7 @@ static int ice_init_cgu_e822(struct ice_hw *hw)
 	cntr_bist.field.i_plllock_sel_0 = 0;
 	cntr_bist.field.i_plllock_sel_1 = 0;
 
-	err = ice_write_cgu_reg_e822(hw, TSPLL_CNTR_BIST_SETTINGS,
+	err = ice_write_cgu_reg_e82x(hw, TSPLL_CNTR_BIST_SETTINGS,
 				     cntr_bist.val);
 	if (err)
 		return err;
@@ -1092,7 +1092,7 @@ static int ice_init_cgu_e822(struct ice_hw *hw)
 	/* Configure the CGU PLL using the parameters from the function
 	 * capabilities.
 	 */
-	err = ice_cfg_cgu_pll_e822(hw, ts_info->time_ref,
+	err = ice_cfg_cgu_pll_e82x(hw, ts_info->time_ref,
 				   (enum ice_clk_src)ts_info->clk_src);
 	if (err)
 		return err;
@@ -1113,7 +1113,7 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
 	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
 		int err;
 
-		err = ice_write_phy_reg_e822(hw, port, P_REG_WL,
+		err = ice_write_phy_reg_e82x(hw, port, P_REG_WL,
 					     PTP_VERNIER_WL);
 		if (err) {
 			ice_debug(hw, ICE_DBG_PTP, "Failed to set vernier window length for port %u, err %d\n",
@@ -1126,12 +1126,12 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_init_phc_e822 - Perform E822 specific PHC initialization
+ * ice_ptp_init_phc_e82x - Perform E822 specific PHC initialization
  * @hw: pointer to HW struct
  *
  * Perform PHC initialization steps specific to E822 devices.
  */
-static int ice_ptp_init_phc_e822(struct ice_hw *hw)
+static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 {
 	int err;
 	u32 regval;
@@ -1145,7 +1145,7 @@ static int ice_ptp_init_phc_e822(struct ice_hw *hw)
 	wr32(hw, PF_SB_REM_DEV_CTL, regval);
 
 	/* Initialize the Clock Generation Unit */
-	err = ice_init_cgu_e822(hw);
+	err = ice_init_cgu_e82x(hw);
 	if (err)
 		return err;
 
@@ -1154,7 +1154,7 @@ static int ice_ptp_init_phc_e822(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_prep_phy_time_e822 - Prepare PHY port with initial time
+ * ice_ptp_prep_phy_time_e82x - Prepare PHY port with initial time
  * @hw: pointer to the HW struct
  * @time: Time to initialize the PHY port clocks to
  *
@@ -1164,7 +1164,7 @@ static int ice_ptp_init_phc_e822(struct ice_hw *hw)
  * units of nominal nanoseconds.
  */
 static int
-ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
+ice_ptp_prep_phy_time_e82x(struct ice_hw *hw, u32 time)
 {
 	u64 phy_time;
 	u8 port;
@@ -1177,14 +1177,14 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
 
 	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
 		/* Tx case */
-		err = ice_write_64b_phy_reg_e822(hw, port,
+		err = ice_write_64b_phy_reg_e82x(hw, port,
 						 P_REG_TX_TIMER_INC_PRE_L,
 						 phy_time);
 		if (err)
 			goto exit_err;
 
 		/* Rx case */
-		err = ice_write_64b_phy_reg_e822(hw, port,
+		err = ice_write_64b_phy_reg_e82x(hw, port,
 						 P_REG_RX_TIMER_INC_PRE_L,
 						 phy_time);
 		if (err)
@@ -1201,7 +1201,7 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
 }
 
 /**
- * ice_ptp_prep_port_adj_e822 - Prepare a single port for time adjust
+ * ice_ptp_prep_port_adj_e82x - Prepare a single port for time adjust
  * @hw: pointer to HW struct
  * @port: Port number to be programmed
  * @time: time in cycles to adjust the port Tx and Rx clocks
@@ -1216,7 +1216,7 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
  * Negative adjustments are supported using 2s complement arithmetic.
  */
 static int
-ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
+ice_ptp_prep_port_adj_e82x(struct ice_hw *hw, u8 port, s64 time)
 {
 	u32 l_time, u_time;
 	int err;
@@ -1225,23 +1225,23 @@ ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
 	u_time = upper_32_bits(time);
 
 	/* Tx case */
-	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_TIMER_INC_PRE_L,
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_TIMER_INC_PRE_L,
 				     l_time);
 	if (err)
 		goto exit_err;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_TIMER_INC_PRE_U,
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_TIMER_INC_PRE_U,
 				     u_time);
 	if (err)
 		goto exit_err;
 
 	/* Rx case */
-	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_TIMER_INC_PRE_L,
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_TIMER_INC_PRE_L,
 				     l_time);
 	if (err)
 		goto exit_err;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_TIMER_INC_PRE_U,
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_TIMER_INC_PRE_U,
 				     u_time);
 	if (err)
 		goto exit_err;
@@ -1255,7 +1255,7 @@ ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
 }
 
 /**
- * ice_ptp_prep_phy_adj_e822 - Prep PHY ports for a time adjustment
+ * ice_ptp_prep_phy_adj_e82x - Prep PHY ports for a time adjustment
  * @hw: pointer to HW struct
  * @adj: adjustment in nanoseconds
  *
@@ -1264,7 +1264,7 @@ ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
  * ICE_PTP_ADJ_TIME or ICE_PTP_ADJ_TIME_AT_TIME sync command.
  */
 static int
-ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
+ice_ptp_prep_phy_adj_e82x(struct ice_hw *hw, s32 adj)
 {
 	s64 cycles;
 	u8 port;
@@ -1281,7 +1281,7 @@ ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
 	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
 		int err;
 
-		err = ice_ptp_prep_port_adj_e822(hw, port, cycles);
+		err = ice_ptp_prep_port_adj_e82x(hw, port, cycles);
 		if (err)
 			return err;
 	}
@@ -1290,7 +1290,7 @@ ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
 }
 
 /**
- * ice_ptp_prep_phy_incval_e822 - Prepare PHY ports for time adjustment
+ * ice_ptp_prep_phy_incval_e82x - Prepare PHY ports for time adjustment
  * @hw: pointer to HW struct
  * @incval: new increment value to prepare
  *
@@ -1299,13 +1299,13 @@ ice_ptp_prep_phy_adj_e822(struct ice_hw *hw, s32 adj)
  * issuing an ICE_PTP_INIT_INCVAL command.
  */
 static int
-ice_ptp_prep_phy_incval_e822(struct ice_hw *hw, u64 incval)
+ice_ptp_prep_phy_incval_e82x(struct ice_hw *hw, u64 incval)
 {
 	int err;
 	u8 port;
 
 	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
-		err = ice_write_40b_phy_reg_e822(hw, port, P_REG_TIMETUS_L,
+		err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_TIMETUS_L,
 						 incval);
 		if (err)
 			goto exit_err;
@@ -1337,7 +1337,7 @@ ice_ptp_read_port_capture(struct ice_hw *hw, u8 port, u64 *tx_ts, u64 *rx_ts)
 	int err;
 
 	/* Tx case */
-	err = ice_read_64b_phy_reg_e822(hw, port, P_REG_TX_CAPTURE_L, tx_ts);
+	err = ice_read_64b_phy_reg_e82x(hw, port, P_REG_TX_CAPTURE_L, tx_ts);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read REG_TX_CAPTURE, err %d\n",
 			  err);
@@ -1348,7 +1348,7 @@ ice_ptp_read_port_capture(struct ice_hw *hw, u8 port, u64 *tx_ts, u64 *rx_ts)
 		  (unsigned long long)*tx_ts);
 
 	/* Rx case */
-	err = ice_read_64b_phy_reg_e822(hw, port, P_REG_RX_CAPTURE_L, rx_ts);
+	err = ice_read_64b_phy_reg_e82x(hw, port, P_REG_RX_CAPTURE_L, rx_ts);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_CAPTURE, err %d\n",
 			  err);
@@ -1362,7 +1362,7 @@ ice_ptp_read_port_capture(struct ice_hw *hw, u8 port, u64 *tx_ts, u64 *rx_ts)
 }
 
 /**
- * ice_ptp_write_port_cmd_e822 - Prepare a single PHY port for a timer command
+ * ice_ptp_write_port_cmd_e82x - Prepare a single PHY port for a timer command
  * @hw: pointer to HW struct
  * @port: Port to which cmd has to be sent
  * @cmd: Command to be sent to the port
@@ -1372,8 +1372,8 @@ ice_ptp_read_port_capture(struct ice_hw *hw, u8 port, u64 *tx_ts, u64 *rx_ts)
  * Do not use this function directly. If you want to configure exactly one
  * port, use ice_ptp_one_port_cmd() instead.
  */
-static int
-ice_ptp_write_port_cmd_e822(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd)
+static int ice_ptp_write_port_cmd_e82x(struct ice_hw *hw, u8 port,
+				       enum ice_ptp_tmr_cmd cmd)
 {
 	u32 cmd_val, val;
 	u8 tmr_idx;
@@ -1403,7 +1403,7 @@ ice_ptp_write_port_cmd_e822(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd
 
 	/* Tx case */
 	/* Read, modify, write */
-	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_TMR_CMD, &val);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_TX_TMR_CMD, &val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_TMR_CMD, err %d\n",
 			  err);
@@ -1414,7 +1414,7 @@ ice_ptp_write_port_cmd_e822(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd
 	val &= ~TS_CMD_MASK;
 	val |= cmd_val;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_TMR_CMD, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_TMR_CMD, val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write back TX_TMR_CMD, err %d\n",
 			  err);
@@ -1423,7 +1423,7 @@ ice_ptp_write_port_cmd_e822(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd
 
 	/* Rx case */
 	/* Read, modify, write */
-	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_TMR_CMD, &val);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_RX_TMR_CMD, &val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_TMR_CMD, err %d\n",
 			  err);
@@ -1434,7 +1434,7 @@ ice_ptp_write_port_cmd_e822(struct ice_hw *hw, u8 port, enum ice_ptp_tmr_cmd cmd
 	val &= ~TS_CMD_MASK;
 	val |= cmd_val;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_TMR_CMD, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_TMR_CMD, val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write back RX_TMR_CMD, err %d\n",
 			  err);
@@ -1469,7 +1469,7 @@ ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 		else
 			cmd = ICE_PTP_NOP;
 
-		err = ice_ptp_write_port_cmd_e822(hw, port, cmd);
+		err = ice_ptp_write_port_cmd_e82x(hw, port, cmd);
 		if (err)
 			return err;
 	}
@@ -1478,7 +1478,7 @@ ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 }
 
 /**
- * ice_ptp_port_cmd_e822 - Prepare all ports for a timer command
+ * ice_ptp_port_cmd_e82x - Prepare all ports for a timer command
  * @hw: pointer to the HW struct
  * @cmd: timer command to prepare
  *
@@ -1486,14 +1486,14 @@ ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
  * command.
  */
 static int
-ice_ptp_port_cmd_e822(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
+ice_ptp_port_cmd_e82x(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
 	u8 port;
 
 	for (port = 0; port < ICE_NUM_EXTERNAL_PORTS; port++) {
 		int err;
 
-		err = ice_ptp_write_port_cmd_e822(hw, port, cmd);
+		err = ice_ptp_write_port_cmd_e82x(hw, port, cmd);
 		if (err)
 			return err;
 	}
@@ -1509,7 +1509,7 @@ ice_ptp_port_cmd_e822(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
  */
 
 /**
- * ice_phy_get_speed_and_fec_e822 - Get link speed and FEC based on serdes mode
+ * ice_phy_get_speed_and_fec_e82x - Get link speed and FEC based on serdes mode
  * @hw: pointer to HW struct
  * @port: the port to read from
  * @link_out: if non-NULL, holds link speed on success
@@ -1519,7 +1519,7 @@ ice_ptp_port_cmd_e822(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
  * algorithm.
  */
 static int
-ice_phy_get_speed_and_fec_e822(struct ice_hw *hw, u8 port,
+ice_phy_get_speed_and_fec_e82x(struct ice_hw *hw, u8 port,
 			       enum ice_ptp_link_spd *link_out,
 			       enum ice_ptp_fec_mode *fec_out)
 {
@@ -1528,7 +1528,7 @@ ice_phy_get_speed_and_fec_e822(struct ice_hw *hw, u8 port,
 	u32 serdes;
 	int err;
 
-	err = ice_read_phy_reg_e822(hw, port, P_REG_LINK_SPEED, &serdes);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_LINK_SPEED, &serdes);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read serdes info\n");
 		return err;
@@ -1585,18 +1585,18 @@ ice_phy_get_speed_and_fec_e822(struct ice_hw *hw, u8 port,
 }
 
 /**
- * ice_phy_cfg_lane_e822 - Configure PHY quad for single/multi-lane timestamp
+ * ice_phy_cfg_lane_e82x - Configure PHY quad for single/multi-lane timestamp
  * @hw: pointer to HW struct
  * @port: to configure the quad for
  */
-static void ice_phy_cfg_lane_e822(struct ice_hw *hw, u8 port)
+static void ice_phy_cfg_lane_e82x(struct ice_hw *hw, u8 port)
 {
 	enum ice_ptp_link_spd link_spd;
 	int err;
 	u32 val;
 	u8 quad;
 
-	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, NULL);
+	err = ice_phy_get_speed_and_fec_e82x(hw, port, &link_spd, NULL);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to get PHY link speed, err %d\n",
 			  err);
@@ -1605,7 +1605,7 @@ static void ice_phy_cfg_lane_e822(struct ice_hw *hw, u8 port)
 
 	quad = port / ICE_PORTS_PER_QUAD;
 
-	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG, &val);
+	err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, &val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEM_GLB_CFG, err %d\n",
 			  err);
@@ -1617,7 +1617,7 @@ static void ice_phy_cfg_lane_e822(struct ice_hw *hw, u8 port)
 	else
 		val |= Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M;
 
-	err = ice_write_quad_reg_e822(hw, quad, Q_REG_TX_MEM_GBL_CFG, val);
+	err = ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write back TX_MEM_GBL_CFG, err %d\n",
 			  err);
@@ -1626,7 +1626,7 @@ static void ice_phy_cfg_lane_e822(struct ice_hw *hw, u8 port)
 }
 
 /**
- * ice_phy_cfg_uix_e822 - Configure Serdes UI to TU conversion for E822
+ * ice_phy_cfg_uix_e82x - Configure Serdes UI to TU conversion for E822
  * @hw: pointer to the HW structure
  * @port: the port to configure
  *
@@ -1671,12 +1671,12 @@ static void ice_phy_cfg_lane_e822(struct ice_hw *hw, u8 port)
  * a divide by 390,625,000. This does lose some precision, but avoids
  * miscalculation due to arithmetic overflow.
  */
-static int ice_phy_cfg_uix_e822(struct ice_hw *hw, u8 port)
+static int ice_phy_cfg_uix_e82x(struct ice_hw *hw, u8 port)
 {
 	u64 cur_freq, clk_incval, tu_per_sec, uix;
 	int err;
 
-	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	cur_freq = ice_e82x_pll_freq(ice_e82x_time_ref(hw));
 	clk_incval = ice_ptp_read_src_incval(hw);
 
 	/* Calculate TUs per second divided by 256 */
@@ -1688,7 +1688,7 @@ static int ice_phy_cfg_uix_e822(struct ice_hw *hw, u8 port)
 	/* Program the 10Gb/40Gb conversion ratio */
 	uix = div_u64(tu_per_sec * LINE_UI_10G_40G, 390625000);
 
-	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_UIX66_10G_40G_L,
+	err = ice_write_64b_phy_reg_e82x(hw, port, P_REG_UIX66_10G_40G_L,
 					 uix);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write UIX66_10G_40G, err %d\n",
@@ -1699,7 +1699,7 @@ static int ice_phy_cfg_uix_e822(struct ice_hw *hw, u8 port)
 	/* Program the 25Gb/100Gb conversion ratio */
 	uix = div_u64(tu_per_sec * LINE_UI_25G_100G, 390625000);
 
-	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_UIX66_25G_100G_L,
+	err = ice_write_64b_phy_reg_e82x(hw, port, P_REG_UIX66_25G_100G_L,
 					 uix);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to write UIX66_25G_100G, err %d\n",
@@ -1711,7 +1711,7 @@ static int ice_phy_cfg_uix_e822(struct ice_hw *hw, u8 port)
 }
 
 /**
- * ice_phy_cfg_parpcs_e822 - Configure TUs per PAR/PCS clock cycle
+ * ice_phy_cfg_parpcs_e82x - Configure TUs per PAR/PCS clock cycle
  * @hw: pointer to the HW struct
  * @port: port to configure
  *
@@ -1753,18 +1753,18 @@ static int ice_phy_cfg_uix_e822(struct ice_hw *hw, u8 port)
  * frequency is ~29 bits, so multiplying them together should fit within the
  * 64 bit arithmetic.
  */
-static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
+static int ice_phy_cfg_parpcs_e82x(struct ice_hw *hw, u8 port)
 {
 	u64 cur_freq, clk_incval, tu_per_sec, phy_tus;
 	enum ice_ptp_link_spd link_spd;
 	enum ice_ptp_fec_mode fec_mode;
 	int err;
 
-	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	err = ice_phy_get_speed_and_fec_e82x(hw, port, &link_spd, &fec_mode);
 	if (err)
 		return err;
 
-	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	cur_freq = ice_e82x_pll_freq(ice_e82x_time_ref(hw));
 	clk_incval = ice_ptp_read_src_incval(hw);
 
 	/* Calculate TUs per cycle of the PHC clock */
@@ -1784,7 +1784,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PAR_TX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_PAR_TX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1796,7 +1796,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PAR_RX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_PAR_RX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1808,7 +1808,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PCS_TX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_PCS_TX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1820,7 +1820,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_PCS_RX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_PCS_RX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1832,7 +1832,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PAR_TX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_DESK_PAR_TX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1844,7 +1844,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PAR_RX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_DESK_PAR_RX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1856,7 +1856,7 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PCS_TX_TUS_L,
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_DESK_PCS_TX_TUS_L,
 					 phy_tus);
 	if (err)
 		return err;
@@ -1868,23 +1868,23 @@ static int ice_phy_cfg_parpcs_e822(struct ice_hw *hw, u8 port)
 	else
 		phy_tus = 0;
 
-	return ice_write_40b_phy_reg_e822(hw, port, P_REG_DESK_PCS_RX_TUS_L,
+	return ice_write_40b_phy_reg_e82x(hw, port, P_REG_DESK_PCS_RX_TUS_L,
 					  phy_tus);
 }
 
 /**
- * ice_calc_fixed_tx_offset_e822 - Calculated Fixed Tx offset for a port
+ * ice_calc_fixed_tx_offset_e82x - Calculated Fixed Tx offset for a port
  * @hw: pointer to the HW struct
  * @link_spd: the Link speed to calculate for
  *
  * Calculate the fixed offset due to known static latency data.
  */
 static u64
-ice_calc_fixed_tx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
+ice_calc_fixed_tx_offset_e82x(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
 {
 	u64 cur_freq, clk_incval, tu_per_sec, fixed_offset;
 
-	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	cur_freq = ice_e82x_pll_freq(ice_e82x_time_ref(hw));
 	clk_incval = ice_ptp_read_src_incval(hw);
 
 	/* Calculate TUs per second */
@@ -1904,7 +1904,7 @@ ice_calc_fixed_tx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
 }
 
 /**
- * ice_phy_cfg_tx_offset_e822 - Configure total Tx timestamp offset
+ * ice_phy_cfg_tx_offset_e82x - Configure total Tx timestamp offset
  * @hw: pointer to the HW struct
  * @port: the PHY port to configure
  *
@@ -1926,7 +1926,7 @@ ice_calc_fixed_tx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
  * Returns zero on success, -EBUSY if the hardware vernier offset
  * calibration has not completed, or another error code on failure.
  */
-int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
+int ice_phy_cfg_tx_offset_e82x(struct ice_hw *hw, u8 port)
 {
 	enum ice_ptp_link_spd link_spd;
 	enum ice_ptp_fec_mode fec_mode;
@@ -1935,7 +1935,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	u32 reg;
 
 	/* Nothing to do if we've already programmed the offset */
-	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_OR, &reg);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_TX_OR, &reg);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_OR for port %u, err %d\n",
 			  port, err);
@@ -1945,7 +1945,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	if (reg)
 		return 0;
 
-	err = ice_read_phy_reg_e822(hw, port, P_REG_TX_OV_STATUS, &reg);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_TX_OV_STATUS, &reg);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_OV_STATUS for port %u, err %d\n",
 			  port, err);
@@ -1955,11 +1955,11 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	if (!(reg & P_REG_TX_OV_STATUS_OV_M))
 		return -EBUSY;
 
-	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	err = ice_phy_get_speed_and_fec_e82x(hw, port, &link_spd, &fec_mode);
 	if (err)
 		return err;
 
-	total_offset = ice_calc_fixed_tx_offset_e822(hw, link_spd);
+	total_offset = ice_calc_fixed_tx_offset_e82x(hw, link_spd);
 
 	/* Read the first Vernier offset from the PHY register and add it to
 	 * the total offset.
@@ -1970,7 +1970,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	    link_spd == ICE_PTP_LNK_SPD_25G_RS ||
 	    link_spd == ICE_PTP_LNK_SPD_40G ||
 	    link_spd == ICE_PTP_LNK_SPD_50G) {
-		err = ice_read_64b_phy_reg_e822(hw, port,
+		err = ice_read_64b_phy_reg_e82x(hw, port,
 						P_REG_PAR_PCS_TX_OFFSET_L,
 						&val);
 		if (err)
@@ -1985,7 +1985,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	 */
 	if (link_spd == ICE_PTP_LNK_SPD_50G_RS ||
 	    link_spd == ICE_PTP_LNK_SPD_100G_RS) {
-		err = ice_read_64b_phy_reg_e822(hw, port,
+		err = ice_read_64b_phy_reg_e82x(hw, port,
 						P_REG_PAR_TX_TIME_L,
 						&val);
 		if (err)
@@ -1998,12 +1998,12 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 	 * PHY and indicate that the Tx offset is ready. After this,
 	 * timestamps will be enabled.
 	 */
-	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_TOTAL_TX_OFFSET_L,
+	err = ice_write_64b_phy_reg_e82x(hw, port, P_REG_TOTAL_TX_OFFSET_L,
 					 total_offset);
 	if (err)
 		return err;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 1);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_OR, 1);
 	if (err)
 		return err;
 
@@ -2014,7 +2014,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
 }
 
 /**
- * ice_phy_calc_pmd_adj_e822 - Calculate PMD adjustment for Rx
+ * ice_phy_calc_pmd_adj_e82x - Calculate PMD adjustment for Rx
  * @hw: pointer to the HW struct
  * @port: the PHY port to adjust for
  * @link_spd: the current link speed of the PHY
@@ -2026,7 +2026,7 @@ int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port)
  * various delays caused when receiving a packet.
  */
 static int
-ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
+ice_phy_calc_pmd_adj_e82x(struct ice_hw *hw, u8 port,
 			  enum ice_ptp_link_spd link_spd,
 			  enum ice_ptp_fec_mode fec_mode, u64 *pmd_adj)
 {
@@ -2035,7 +2035,7 @@ ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
 	u32 val;
 	int err;
 
-	err = ice_read_phy_reg_e822(hw, port, P_REG_PMD_ALIGNMENT, &val);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_PMD_ALIGNMENT, &val);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read PMD alignment, err %d\n",
 			  err);
@@ -2044,7 +2044,7 @@ ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
 
 	pmd_align = (u8)val;
 
-	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	cur_freq = ice_e82x_pll_freq(ice_e82x_time_ref(hw));
 	clk_incval = ice_ptp_read_src_incval(hw);
 
 	/* Calculate TUs per second */
@@ -2123,7 +2123,7 @@ ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
 		u64 cycle_adj;
 		u8 rx_cycle;
 
-		err = ice_read_phy_reg_e822(hw, port, P_REG_RX_40_TO_160_CNT,
+		err = ice_read_phy_reg_e82x(hw, port, P_REG_RX_40_TO_160_CNT,
 					    &val);
 		if (err) {
 			ice_debug(hw, ICE_DBG_PTP, "Failed to read 25G-RS Rx cycle count, err %d\n",
@@ -2145,7 +2145,7 @@ ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
 		u64 cycle_adj;
 		u8 rx_cycle;
 
-		err = ice_read_phy_reg_e822(hw, port, P_REG_RX_80_TO_160_CNT,
+		err = ice_read_phy_reg_e82x(hw, port, P_REG_RX_80_TO_160_CNT,
 					    &val);
 		if (err) {
 			ice_debug(hw, ICE_DBG_PTP, "Failed to read 50G-RS Rx cycle count, err %d\n",
@@ -2172,18 +2172,18 @@ ice_phy_calc_pmd_adj_e822(struct ice_hw *hw, u8 port,
 }
 
 /**
- * ice_calc_fixed_rx_offset_e822 - Calculated the fixed Rx offset for a port
+ * ice_calc_fixed_rx_offset_e82x - Calculated the fixed Rx offset for a port
  * @hw: pointer to HW struct
  * @link_spd: The Link speed to calculate for
  *
  * Determine the fixed Rx latency for a given link speed.
  */
 static u64
-ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
+ice_calc_fixed_rx_offset_e82x(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
 {
 	u64 cur_freq, clk_incval, tu_per_sec, fixed_offset;
 
-	cur_freq = ice_e822_pll_freq(ice_e822_time_ref(hw));
+	cur_freq = ice_e82x_pll_freq(ice_e82x_time_ref(hw));
 	clk_incval = ice_ptp_read_src_incval(hw);
 
 	/* Calculate TUs per second */
@@ -2203,7 +2203,7 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
 }
 
 /**
- * ice_phy_cfg_rx_offset_e822 - Configure total Rx timestamp offset
+ * ice_phy_cfg_rx_offset_e82x - Configure total Rx timestamp offset
  * @hw: pointer to the HW struct
  * @port: the PHY port to configure
  *
@@ -2229,7 +2229,7 @@ ice_calc_fixed_rx_offset_e822(struct ice_hw *hw, enum ice_ptp_link_spd link_spd)
  * Returns zero on success, -EBUSY if the hardware vernier offset
  * calibration has not completed, or another error code on failure.
  */
-int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
+int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port)
 {
 	enum ice_ptp_link_spd link_spd;
 	enum ice_ptp_fec_mode fec_mode;
@@ -2238,7 +2238,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	u32 reg;
 
 	/* Nothing to do if we've already programmed the offset */
-	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OR, &reg);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_RX_OR, &reg);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OR for port %u, err %d\n",
 			  port, err);
@@ -2248,7 +2248,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	if (reg)
 		return 0;
 
-	err = ice_read_phy_reg_e822(hw, port, P_REG_RX_OV_STATUS, &reg);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_RX_OV_STATUS, &reg);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read RX_OV_STATUS for port %u, err %d\n",
 			  port, err);
@@ -2258,16 +2258,16 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	if (!(reg & P_REG_RX_OV_STATUS_OV_M))
 		return -EBUSY;
 
-	err = ice_phy_get_speed_and_fec_e822(hw, port, &link_spd, &fec_mode);
+	err = ice_phy_get_speed_and_fec_e82x(hw, port, &link_spd, &fec_mode);
 	if (err)
 		return err;
 
-	total_offset = ice_calc_fixed_rx_offset_e822(hw, link_spd);
+	total_offset = ice_calc_fixed_rx_offset_e82x(hw, link_spd);
 
 	/* Read the first Vernier offset from the PHY register and add it to
 	 * the total offset.
 	 */
-	err = ice_read_64b_phy_reg_e822(hw, port,
+	err = ice_read_64b_phy_reg_e82x(hw, port,
 					P_REG_PAR_PCS_RX_OFFSET_L,
 					&val);
 	if (err)
@@ -2282,7 +2282,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	    link_spd == ICE_PTP_LNK_SPD_50G ||
 	    link_spd == ICE_PTP_LNK_SPD_50G_RS ||
 	    link_spd == ICE_PTP_LNK_SPD_100G_RS) {
-		err = ice_read_64b_phy_reg_e822(hw, port,
+		err = ice_read_64b_phy_reg_e82x(hw, port,
 						P_REG_PAR_RX_TIME_L,
 						&val);
 		if (err)
@@ -2292,7 +2292,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	}
 
 	/* In addition, Rx must account for the PMD alignment */
-	err = ice_phy_calc_pmd_adj_e822(hw, port, link_spd, fec_mode, &pmd);
+	err = ice_phy_calc_pmd_adj_e82x(hw, port, link_spd, fec_mode, &pmd);
 	if (err)
 		return err;
 
@@ -2308,12 +2308,12 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 	 * PHY and indicate that the Rx offset is ready. After this,
 	 * timestamps will be enabled.
 	 */
-	err = ice_write_64b_phy_reg_e822(hw, port, P_REG_TOTAL_RX_OFFSET_L,
+	err = ice_write_64b_phy_reg_e82x(hw, port, P_REG_TOTAL_RX_OFFSET_L,
 					 total_offset);
 	if (err)
 		return err;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 1);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_OR, 1);
 	if (err)
 		return err;
 
@@ -2324,7 +2324,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
 }
 
 /**
- * ice_read_phy_and_phc_time_e822 - Simultaneously capture PHC and PHY time
+ * ice_read_phy_and_phc_time_e82x - Simultaneously capture PHC and PHY time
  * @hw: pointer to the HW struct
  * @port: the PHY port to read
  * @phy_time: on return, the 64bit PHY timer value
@@ -2334,7 +2334,7 @@ int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port)
  * and PHC timer values.
  */
 static int
-ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
+ice_read_phy_and_phc_time_e82x(struct ice_hw *hw, u8 port, u64 *phy_time,
 			       u64 *phc_time)
 {
 	u64 tx_time, rx_time;
@@ -2381,7 +2381,7 @@ ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
 }
 
 /**
- * ice_sync_phy_timer_e822 - Synchronize the PHY timer with PHC timer
+ * ice_sync_phy_timer_e82x - Synchronize the PHY timer with PHC timer
  * @hw: pointer to the HW struct
  * @port: the PHY port to synchronize
  *
@@ -2392,7 +2392,7 @@ ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
  * to the PHY timer in order to ensure it reads the same value as the
  * primary PHC timer.
  */
-static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
+static int ice_sync_phy_timer_e82x(struct ice_hw *hw, u8 port)
 {
 	u64 phc_time, phy_time, difference;
 	int err;
@@ -2402,7 +2402,7 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 		return -EBUSY;
 	}
 
-	err = ice_read_phy_and_phc_time_e822(hw, port, &phy_time, &phc_time);
+	err = ice_read_phy_and_phc_time_e82x(hw, port, &phy_time, &phc_time);
 	if (err)
 		goto err_unlock;
 
@@ -2416,7 +2416,7 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 	 */
 	difference = phc_time - phy_time;
 
-	err = ice_ptp_prep_port_adj_e822(hw, port, (s64)difference);
+	err = ice_ptp_prep_port_adj_e82x(hw, port, (s64)difference);
 	if (err)
 		goto err_unlock;
 
@@ -2433,7 +2433,7 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 	/* Re-capture the timer values to flush the command registers and
 	 * verify that the time was properly adjusted.
 	 */
-	err = ice_read_phy_and_phc_time_e822(hw, port, &phy_time, &phc_time);
+	err = ice_read_phy_and_phc_time_e82x(hw, port, &phy_time, &phc_time);
 	if (err)
 		goto err_unlock;
 
@@ -2452,7 +2452,7 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 }
 
 /**
- * ice_stop_phy_timer_e822 - Stop the PHY clock timer
+ * ice_stop_phy_timer_e82x - Stop the PHY clock timer
  * @hw: pointer to the HW struct
  * @port: the PHY port to stop
  * @soft_reset: if true, hold the SOFT_RESET bit of P_REG_PS
@@ -2462,36 +2462,36 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
  * initialized or when link speed changes.
  */
 int
-ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset)
+ice_stop_phy_timer_e82x(struct ice_hw *hw, u8 port, bool soft_reset)
 {
 	int err;
 	u32 val;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_TX_OR, 0);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_TX_OR, 0);
 	if (err)
 		return err;
 
-	err = ice_write_phy_reg_e822(hw, port, P_REG_RX_OR, 0);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_RX_OR, 0);
 	if (err)
 		return err;
 
-	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_PS, &val);
 	if (err)
 		return err;
 
 	val &= ~P_REG_PS_START_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
 	val &= ~P_REG_PS_ENA_CLK_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
 	if (soft_reset) {
 		val |= P_REG_PS_SFT_RESET_M;
-		err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+		err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 		if (err)
 			return err;
 	}
@@ -2502,7 +2502,7 @@ ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset)
 }
 
 /**
- * ice_start_phy_timer_e822 - Start the PHY clock timer
+ * ice_start_phy_timer_e82x - Start the PHY clock timer
  * @hw: pointer to the HW struct
  * @port: the PHY port to start
  *
@@ -2512,7 +2512,7 @@ ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset)
  *
  * Hardware will take Vernier measurements on Tx or Rx of packets.
  */
-int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
+int ice_start_phy_timer_e82x(struct ice_hw *hw, u8 port)
 {
 	u32 lo, hi, val;
 	u64 incval;
@@ -2521,17 +2521,17 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
 
-	err = ice_stop_phy_timer_e822(hw, port, false);
+	err = ice_stop_phy_timer_e82x(hw, port, false);
 	if (err)
 		return err;
 
-	ice_phy_cfg_lane_e822(hw, port);
+	ice_phy_cfg_lane_e82x(hw, port);
 
-	err = ice_phy_cfg_uix_e822(hw, port);
+	err = ice_phy_cfg_uix_e82x(hw, port);
 	if (err)
 		return err;
 
-	err = ice_phy_cfg_parpcs_e822(hw, port);
+	err = ice_phy_cfg_parpcs_e82x(hw, port);
 	if (err)
 		return err;
 
@@ -2539,7 +2539,7 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
 	incval = (u64)hi << 32 | lo;
 
-	err = ice_write_40b_phy_reg_e822(hw, port, P_REG_TIMETUS_L, incval);
+	err = ice_write_40b_phy_reg_e82x(hw, port, P_REG_TIMETUS_L, incval);
 	if (err)
 		return err;
 
@@ -2552,22 +2552,22 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 
 	ice_ptp_exec_tmr_cmd(hw);
 
-	err = ice_read_phy_reg_e822(hw, port, P_REG_PS, &val);
+	err = ice_read_phy_reg_e82x(hw, port, P_REG_PS, &val);
 	if (err)
 		return err;
 
 	val |= P_REG_PS_SFT_RESET_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
 	val |= P_REG_PS_START_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
 	val &= ~P_REG_PS_SFT_RESET_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
@@ -2578,18 +2578,18 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	ice_ptp_exec_tmr_cmd(hw);
 
 	val |= P_REG_PS_ENA_CLK_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
 	val |= P_REG_PS_LOAD_OFFSET_M;
-	err = ice_write_phy_reg_e822(hw, port, P_REG_PS, val);
+	err = ice_write_phy_reg_e82x(hw, port, P_REG_PS, val);
 	if (err)
 		return err;
 
 	ice_ptp_exec_tmr_cmd(hw);
 
-	err = ice_sync_phy_timer_e822(hw, port);
+	err = ice_sync_phy_timer_e82x(hw, port);
 	if (err)
 		return err;
 
@@ -2599,7 +2599,7 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 }
 
 /**
- * ice_get_phy_tx_tstamp_ready_e822 - Read Tx memory status register
+ * ice_get_phy_tx_tstamp_ready_e82x - Read Tx memory status register
  * @hw: pointer to the HW struct
  * @quad: the timestamp quad to read from
  * @tstamp_ready: contents of the Tx memory status register
@@ -2609,19 +2609,19 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
  * ready to be captured from the PHY timestamp block.
  */
 static int
-ice_get_phy_tx_tstamp_ready_e822(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
+ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
 {
 	u32 hi, lo;
 	int err;
 
-	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_U, &hi);
+	err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEMORY_STATUS_U, &hi);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_U for quad %u, err %d\n",
 			  quad, err);
 		return err;
 	}
 
-	err = ice_read_quad_reg_e822(hw, quad, Q_REG_TX_MEMORY_STATUS_L, &lo);
+	err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEMORY_STATUS_L, &lo);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read TX_MEMORY_STATUS_L for quad %u, err %d\n",
 			  quad, err);
@@ -3307,7 +3307,7 @@ void ice_ptp_init_phy_model(struct ice_hw *hw)
 	if (ice_is_e810(hw))
 		hw->phy_model = ICE_PHY_E810;
 	else
-		hw->phy_model = ICE_PHY_E822;
+		hw->phy_model = ICE_PHY_E82X;
 }
 
 /**
@@ -3332,8 +3332,8 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	case ICE_PHY_E810:
 		err = ice_ptp_port_cmd_e810(hw, cmd);
 		break;
-	case ICE_PHY_E822:
-		err = ice_ptp_port_cmd_e822(hw, cmd);
+	case ICE_PHY_E82X:
+		err = ice_ptp_port_cmd_e82x(hw, cmd);
 		break;
 	default:
 		err = -EOPNOTSUPP;
@@ -3384,8 +3384,8 @@ int ice_ptp_init_time(struct ice_hw *hw, u64 time)
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_time_e810(hw, time & 0xFFFFFFFF);
 		break;
-	case ICE_PHY_E822:
-		err = ice_ptp_prep_phy_time_e822(hw, time & 0xFFFFFFFF);
+	case ICE_PHY_E82X:
+		err = ice_ptp_prep_phy_time_e82x(hw, time & 0xFFFFFFFF);
 		break;
 	default:
 		err = -EOPNOTSUPP;
@@ -3426,8 +3426,8 @@ int ice_ptp_write_incval(struct ice_hw *hw, u64 incval)
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_incval_e810(hw, incval);
 		break;
-	case ICE_PHY_E822:
-		err = ice_ptp_prep_phy_incval_e822(hw, incval);
+	case ICE_PHY_E82X:
+		err = ice_ptp_prep_phy_incval_e82x(hw, incval);
 		break;
 	default:
 		err = -EOPNOTSUPP;
@@ -3492,8 +3492,8 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 	case ICE_PHY_E810:
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
-	case ICE_PHY_E822:
-		err = ice_ptp_prep_phy_adj_e822(hw, adj);
+	case ICE_PHY_E82X:
+		err = ice_ptp_prep_phy_adj_e82x(hw, adj);
 		break;
 	default:
 		err = -EOPNOTSUPP;
@@ -3521,8 +3521,8 @@ int ice_read_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx, u64 *tstamp)
 	switch (hw->phy_model) {
 	case ICE_PHY_E810:
 		return ice_read_phy_tstamp_e810(hw, block, idx, tstamp);
-	case ICE_PHY_E822:
-		return ice_read_phy_tstamp_e822(hw, block, idx, tstamp);
+	case ICE_PHY_E82X:
+		return ice_read_phy_tstamp_e82x(hw, block, idx, tstamp);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -3549,8 +3549,8 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
 	switch (hw->phy_model) {
 	case ICE_PHY_E810:
 		return ice_clear_phy_tstamp_e810(hw, block, idx);
-	case ICE_PHY_E822:
-		return ice_clear_phy_tstamp_e822(hw, block, idx);
+	case ICE_PHY_E82X:
+		return ice_clear_phy_tstamp_e82x(hw, block, idx);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -3608,8 +3608,8 @@ static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
 void ice_ptp_reset_ts_memory(struct ice_hw *hw)
 {
 	switch (hw->phy_model) {
-	case ICE_PHY_E822:
-		ice_ptp_reset_ts_memory_e822(hw);
+	case ICE_PHY_E82X:
+		ice_ptp_reset_ts_memory_e82x(hw);
 		break;
 	case ICE_PHY_E810:
 	default:
@@ -3636,8 +3636,8 @@ int ice_ptp_init_phc(struct ice_hw *hw)
 	switch (hw->phy_model) {
 	case ICE_PHY_E810:
 		return ice_ptp_init_phc_e810(hw);
-	case ICE_PHY_E822:
-		return ice_ptp_init_phc_e822(hw);
+	case ICE_PHY_E82X:
+		return ice_ptp_init_phc_e82x(hw);
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -3660,8 +3660,8 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
 	case ICE_PHY_E810:
 		return ice_get_phy_tx_tstamp_ready_e810(hw, block,
 							tstamp_ready);
-	case ICE_PHY_E822:
-		return ice_get_phy_tx_tstamp_ready_e822(hw, block,
+	case ICE_PHY_E82X:
+		return ice_get_phy_tx_tstamp_ready_e82x(hw, block,
 							tstamp_ready);
 		break;
 	default:
@@ -3942,7 +3942,7 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
 	case ICE_DEV_ID_E823C_QSFP:
 	case ICE_DEV_ID_E823C_SFP:
 	case ICE_DEV_ID_E823C_SGMII:
-		*pin_num = ICE_E822_RCLK_PINS_NUM;
+		*pin_num = ICE_E82X_RCLK_PINS_NUM;
 		ret = 0;
 		if (hw->cgu_part_number ==
 		    ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032)
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index cf76701566c7..e976138e934a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -42,7 +42,7 @@ enum ice_ptp_fec_mode {
 };
 
 /**
- * struct ice_time_ref_info_e822
+ * struct ice_time_ref_info_e82x
  * @pll_freq: Frequency of PLL that drives timer ticks in Hz
  * @nominal_incval: increment to generate nanoseconds in GLTSYN_TIME_L
  * @pps_delay: propagation delay of the PPS output signal
@@ -50,14 +50,14 @@ enum ice_ptp_fec_mode {
  * Characteristic information for the various TIME_REF sources possible in the
  * E822 devices
  */
-struct ice_time_ref_info_e822 {
+struct ice_time_ref_info_e82x {
 	u64 pll_freq;
 	u64 nominal_incval;
 	u8 pps_delay;
 };
 
 /**
- * struct ice_vernier_info_e822
+ * struct ice_vernier_info_e82x
  * @tx_par_clk: Frequency used to calculate P_REG_PAR_TX_TUS
  * @rx_par_clk: Frequency used to calculate P_REG_PAR_RX_TUS
  * @tx_pcs_clk: Frequency used to calculate P_REG_PCS_TX_TUS
@@ -80,7 +80,7 @@ struct ice_time_ref_info_e822 {
  * different link speeds, either the deskew marker for multi-lane link speeds
  * or the Reed Solomon gearbox marker for RS-FEC.
  */
-struct ice_vernier_info_e822 {
+struct ice_vernier_info_e82x {
 	u32 tx_par_clk;
 	u32 rx_par_clk;
 	u32 tx_pcs_clk;
@@ -95,7 +95,7 @@ struct ice_vernier_info_e822 {
 };
 
 /**
- * struct ice_cgu_pll_params_e822
+ * struct ice_cgu_pll_params_e82x
  * @refclk_pre_div: Reference clock pre-divisor
  * @feedback_div: Feedback divisor
  * @frac_n_div: Fractional divisor
@@ -104,7 +104,7 @@ struct ice_vernier_info_e822 {
  * Clock Generation Unit parameters used to program the PLL based on the
  * selected TIME_REF frequency.
  */
-struct ice_cgu_pll_params_e822 {
+struct ice_cgu_pll_params_e82x {
 	u32 refclk_pre_div;
 	u32 feedback_div;
 	u32 frac_n_div;
@@ -124,7 +124,7 @@ enum ice_phy_rclk_pins {
 };
 
 #define ICE_E810_RCLK_PINS_NUM		(ICE_RCLKB_PIN + 1)
-#define ICE_E822_RCLK_PINS_NUM		(ICE_RCLKA_PIN + 1)
+#define ICE_E82X_RCLK_PINS_NUM		(ICE_RCLKA_PIN + 1)
 #define E810T_CGU_INPUT_C827(_phy, _pin) ((_phy) * ICE_E810_RCLK_PINS_NUM + \
 					  (_pin) + ZL_REF1P)
 
@@ -183,16 +183,16 @@ struct ice_cgu_pin_desc {
 };
 
 extern const struct
-ice_cgu_pll_params_e822 e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
+ice_cgu_pll_params_e82x e822_cgu_params[NUM_ICE_TIME_REF_FREQ];
 
 #define E810C_QSFP_C827_0_HANDLE 2
 #define E810C_QSFP_C827_1_HANDLE 3
 
 /* Table of constants related to possible TIME_REF sources */
-extern const struct ice_time_ref_info_e822 e822_time_ref[NUM_ICE_TIME_REF_FREQ];
+extern const struct ice_time_ref_info_e82x e822_time_ref[NUM_ICE_TIME_REF_FREQ];
 
 /* Table of constants for Vernier calibration on E822 */
-extern const struct ice_vernier_info_e822 e822_vernier[NUM_ICE_PTP_LNK_SPD];
+extern const struct ice_vernier_info_e82x e822_vernier[NUM_ICE_PTP_LNK_SPD];
 
 /* Increment value to generate nanoseconds in the GLTSYN_TIME_L register for
  * the E810 devices. Based off of a PLL with an 812.5 MHz frequency.
@@ -215,23 +215,23 @@ int ice_ptp_init_phc(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 
 /* E822 family functions */
-int ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
-int ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
-void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad);
+int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
+int ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
+void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad);
 
 /**
- * ice_e822_time_ref - Get the current TIME_REF from capabilities
+ * ice_e82x_time_ref - Get the current TIME_REF from capabilities
  * @hw: pointer to the HW structure
  *
  * Returns the current TIME_REF from the capabilities structure.
  */
-static inline enum ice_time_ref_freq ice_e822_time_ref(struct ice_hw *hw)
+static inline enum ice_time_ref_freq ice_e82x_time_ref(struct ice_hw *hw)
 {
 	return hw->func_caps.ts_func_info.time_ref;
 }
 
 /**
- * ice_set_e822_time_ref - Set new TIME_REF
+ * ice_set_e82x_time_ref - Set new TIME_REF
  * @hw: pointer to the HW structure
  * @time_ref: new TIME_REF to set
  *
@@ -239,31 +239,31 @@ static inline enum ice_time_ref_freq ice_e822_time_ref(struct ice_hw *hw)
  * change, such as an update to the CGU registers.
  */
 static inline void
-ice_set_e822_time_ref(struct ice_hw *hw, enum ice_time_ref_freq time_ref)
+ice_set_e82x_time_ref(struct ice_hw *hw, enum ice_time_ref_freq time_ref)
 {
 	hw->func_caps.ts_func_info.time_ref = time_ref;
 }
 
-static inline u64 ice_e822_pll_freq(enum ice_time_ref_freq time_ref)
+static inline u64 ice_e82x_pll_freq(enum ice_time_ref_freq time_ref)
 {
 	return e822_time_ref[time_ref].pll_freq;
 }
 
-static inline u64 ice_e822_nominal_incval(enum ice_time_ref_freq time_ref)
+static inline u64 ice_e82x_nominal_incval(enum ice_time_ref_freq time_ref)
 {
 	return e822_time_ref[time_ref].nominal_incval;
 }
 
-static inline u64 ice_e822_pps_delay(enum ice_time_ref_freq time_ref)
+static inline u64 ice_e82x_pps_delay(enum ice_time_ref_freq time_ref)
 {
 	return e822_time_ref[time_ref].pps_delay;
 }
 
 /* E822 Vernier calibration functions */
-int ice_stop_phy_timer_e822(struct ice_hw *hw, u8 port, bool soft_reset);
-int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port);
-int ice_phy_cfg_tx_offset_e822(struct ice_hw *hw, u8 port);
-int ice_phy_cfg_rx_offset_e822(struct ice_hw *hw, u8 port);
+int ice_stop_phy_timer_e82x(struct ice_hw *hw, u8 port, bool soft_reset);
+int ice_start_phy_timer_e82x(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_tx_offset_e82x(struct ice_hw *hw, u8 port);
+int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port);
 
 /* E810 family functions */
 int ice_ptp_init_phy_e810(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 5a80158e49ed..2be3955e249e 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -834,7 +834,7 @@ struct ice_mbx_data {
 enum ice_phy_model {
 	ICE_PHY_UNSUP = -1,
 	ICE_PHY_E810  = 1,
-	ICE_PHY_E822,
+	ICE_PHY_E82X,
 };
 
 /* Port hardware description */
@@ -917,10 +917,9 @@ struct ice_hw {
 	/* INTRL granularity in 1 us */
 	u8 intrl_gran;
 
-#define ICE_PHY_PER_NAC_E822		1
 #define ICE_MAX_QUAD			2
-#define ICE_QUADS_PER_PHY_E822		2
-#define ICE_PORTS_PER_PHY_E822		8
+#define ICE_QUADS_PER_PHY_E82X		2
+#define ICE_PORTS_PER_PHY_E82X		8
 #define ICE_PORTS_PER_QUAD		4
 #define ICE_PORTS_PER_PHY_E810		4
 #define ICE_NUM_EXTERNAL_PORTS		(ICE_MAX_QUAD * ICE_PORTS_PER_QUAD)

base-commit: 2f5380161e527b085e3a0b1c4898810ef35d4240
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
